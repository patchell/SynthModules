/*
 * 500-1093_MidiMerger.c
 *
 * Created: 8/4/2018 9:23:13 PM
 * Author : James Patchell
 * Copyright (c) James Patchell 2018
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include "task.h"
#include "pq.h"
#include "cio.h"
#include "rs232.h"
#include "MessageQueue.h"
#include "MidiParse.h"
#include "ByteQueue.h"

IOCB *pMidi1;	//Midi CH1 IO
IOCB *pMidi2;	//Midi Ch2 IO
//------------------------------
// Merger Message Queue
//------------------------------
MESSAGE_QUEUE *pMergeMQ;
//Commands
#define MSGCMD_CHAN1		0
#define MSGCMD_CHAN2		1
#define MSGCMD_REALTIME		2
#define MSGCMD_SYSEX1		3
#define MSGCMD_SYSEX2		4
#define MSGCMD_SYSEXEND1	5
#define MSGCMD_SYSEXEND2	6
#define MSGCMD_CHAN1_DONE	7
#define MSGCMD_CHAN2_DONE	8

//-----------------------------------------
// classification codes for midi bytes
// returned by ClassifyMidiByte()
//-----------------------------------------

#define CLASSIFY_DATA		0
#define CLASSIFY_CH_COMMAND	1
#define CLASSIFY_REALTIME	2
#define CLASSIFY_SYSEX		3
#define CLASSIFY_SYSEXEND	4
#define CLASSIFY_GLBL_CMD	5

/******************************************
	ClassifyMidiByte
		This function classifies the type
		of byte that was just recieved 
		over the Midi Connection
	parameters:
		c.....byte to classify
	return value
		classification of byte
******************************************/
int ClassifyMidiByte(int c)
{
	int rv = 0;
	if(c < 128)	//data?
		rv = CLASSIFY_DATA;
	else if (c >= 0x80 && c <= 0xef)
		rv = CLASSIFY_CH_COMMAND;
	else if (c == SYSEX)
		rv = CLASSIFY_SYSEX;
	else if (c == SYSEXEND)
		rv = CLASSIFY_SYSEXEND;
	else if (c >= SYSCOM_MTCQUARTERFRAME && c <= SYSCOMTUNEREQ)
		rv = CLASSIFY_GLBL_CMD;
	else if (c >= SYSRTCLOCK && c <= SYSRTRESET)
		rv = CLASSIFY_REALTIME;
	return rv;
}

void TIMER0_OVF_vect(void) __attribute__ ((naked));
void TIMER0_OVF_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	TCNT0 = 0x80;
	TimerTicker();
	ExitInterrupt();
	RESTORE_IRQ();
}

//----------------------------------
// Values for State in MergeTask
//----------------------------------

#define STATE_IDLE		0
#define STATE_CH1		1
#define STATE_CH2		2

//----------------------------------
// Values for QueueState
//----------------------------------
#define QUEUESTATE_NONE			0
#define QUEUESTATE_CHAN1		1
#define QUEUESTATE_CHAN2		2
#define QUEUESTATE_CH1_STOPPED	3
#define QUEUESTATE_CH2_STOPPED	4

TCB TMergTask;

void MergeTask(void *arg)  __attribute__ ( ( noreturn ) );
void MergeTask(void *arg)
{
	BQ Queue;
	int State = STATE_IDLE;
	int QueueState = 0;
	MSG *pMsg;
	char *buffer;
	int i,n;

	IOCB *pMidiOut = (IOCB *)arg;
	buffer = malloc(512);
	CreateBQ(&Queue,buffer,512);
	while(1)
	{
		pMsg = MqGet(pMergeMQ);
		switch(pMsg->MsgCmd)
		{
			case MSGCMD_SYSEX1:
			case MSGCMD_CHAN1:
				switch(State)
				{
					case STATE_IDLE:
					case STATE_CH1:
						State = STATE_CH1;
						CioPutC(pMidiOut,pMsg->Payload[0]);
						break;
					case STATE_CH2:
						QueueState = QUEUESTATE_CHAN2;
						BQPut(&Queue,pMsg->Payload[0]);
						break;
				}
				break;
			case MSGCMD_SYSEX2:
			case MSGCMD_CHAN2:
				switch(State)
				{
					case STATE_CH1:
						QueueState = QUEUESTATE_CHAN1;
						BQPut(&Queue,pMsg->Payload[0]);
						break;
					case STATE_IDLE:
					case STATE_CH2:
						State = STATE_CH2;
						CioPutC(pMidiOut,pMsg->Payload[0]);
						break;
				}
				break;
			case MSGCMD_REALTIME:
				CioPutC(pMidiOut,pMsg->Payload[0]);
				break;
			case MSGCMD_SYSEXEND2:
				switch(State)
				{
					case STATE_CH1:
						BQPut(&Queue,pMsg->Payload[0]);
						break;
					case STATE_IDLE:
					case STATE_CH2:
						State = STATE_CH2;
						CioPutC(pMidiOut,pMsg->Payload[0]);
						if(Queue.nChar)
						{
							n = Queue.nChar;
							for(i=0;i<n;++i)
								CioPutC(pMidiOut,BQget(&Queue));
						}
						State = STATE_CH1;
						break;
				}
				break;
			case MSGCMD_SYSEXEND1:
				CioPutC(pMidiOut,pMsg->Payload[0]);
				break;
			case MSGCMD_CHAN1_DONE:
				if(STATE_CH1 == State)
				{
					if(Queue.nChar)
					{
						n = Queue.nChar;
						for(i=0;i<n;++i)
							CioPutC(pMidiOut,BQget(&Queue));
						if(QueueState == QUEUESTATE_CHAN2)
							State = STATE_CH2;
						else if (QueueState == QUEUESTATE_CH2_STOPPED)
							State = STATE_IDLE;
					}
					else
						State = STATE_IDLE;
				}
				else if(QueueState = QUEUESTATE_CHAN1)
				{
					QueueState = QUEUESTATE_CH1_STOPPED;
				}
				break;
			case MSGCMD_CHAN2_DONE:
				if(STATE_CH2 == State)
				{
					if(Queue.nChar)
					{
						n = Queue.nChar;
						for(i=0;i<n;++i)
							CioPutC(pMidiOut,BQget(&Queue));
						State = STATE_CH1;
					}
					else
						State = STATE_IDLE;
				}
				break;
		}
		DeleteMSG(pMsg);
	}
}

TCB TMidiCh2Task;

void MidiCh2Task(void *arg)  __attribute__ ( ( noreturn ) );
void MidiCh2Task(void *arg)
{
	IOCB *pMidi = (IOCB *)arg;
	int DataClass;
	int c;
	MSG *pMsg;
	int timeout;
	int cmd=0;
	int TimeOutCount = 0;

	timeout = -1;	//infinite timeout
	while(1)
	{
		c = CioGetC(pMidi,timeout);
		if(c >= 0)
		{
			TimeOutCount = 0;
			DataClass = ClassifyMidiByte(c);
			switch(DataClass)
			{
				case CLASSIFY_DATA:
					cmd = MSGCMD_CHAN2;
					break;
				case CLASSIFY_CH_COMMAND:
					cmd = MSGCMD_CHAN2;
					timeout = 2;	//2ms timeout
					break;
				case CLASSIFY_REALTIME:
					cmd = MSGCMD_REALTIME;
					break;
				case CLASSIFY_SYSEX:
					cmd = MSGCMD_SYSEX2;
					break;
				case CLASSIFY_SYSEXEND:
					cmd = MSGCMD_SYSEXEND2;
					break;
				case CLASSIFY_GLBL_CMD:
					cmd = MSGCMD_CHAN2;
					break;
			}
			pMsg = NewMSG(1);
			pMsg->MaxPayload = 1;
			pMsg->Payload[0] = c;
			pMsg->MsgCmd = cmd;
			MqPut(pMergeMQ,pMsg);
		}
		else  //we have a timeout
		{
			TimeOutCount++;
			if(TimeOutCount == 2)
			{
				timeout = -1; //back to infinite timeout
				TimeOutCount = 0;
			}
			else
			{
				timeout = 2;
			}
			pMsg = NewMSG(1);
			pMsg->MsgCmd = MSGCMD_CHAN2_DONE;
			MqPut(pMergeMQ,pMsg);
		}
	}
}

TCB TMidiCh1Task;

void MidiCh1Task(void *arg)  __attribute__ ( ( noreturn ) );
void MidiCh1Task(void *arg)
{
	IOCB *pMidi = (IOCB *)arg;
	int DataClass;
	int c;
	MSG *pMsg;
	int timeout;
	int TimeOutCount = 0;
	int cmd=0;

	timeout = -1;	//infinite timeout
	while(1)
	{
		c = CioGetC(pMidi,timeout);
		if(c >= 0)
		{
			TimeOutCount = 0;
			DataClass = ClassifyMidiByte(c);
			switch(DataClass)
			{
				case CLASSIFY_DATA:
					cmd = MSGCMD_CHAN1;
					break;
				case CLASSIFY_CH_COMMAND:
					cmd = MSGCMD_CHAN1;
					timeout = 2;	//2ms timeout
					break;
				case CLASSIFY_REALTIME:
					cmd = MSGCMD_REALTIME;
					break;
				case CLASSIFY_SYSEX:
					cmd = MSGCMD_SYSEX1;
					break;
				case CLASSIFY_SYSEXEND:
					cmd = MSGCMD_SYSEXEND1;
					break;
				case CLASSIFY_GLBL_CMD:
					cmd = MSGCMD_CHAN1;
					break;
			}
			pMsg = NewMSG(1);
			pMsg->MaxPayload = 1;
			pMsg->Payload[0] = c;
			pMsg->MsgCmd = cmd;
			MqPut(pMergeMQ,pMsg);
		}
		else  //we have a timeout
		{
			TimeOutCount++;
			if(TimeOutCount == 2)
			{
				timeout = -1; //back to infinite timeout
				TimeOutCount = 0;
			}
			else
			{
				timeout = 2;
			}
			pMsg = NewMSG(1);
			pMsg->MsgCmd = MSGCMD_CHAN2_DONE;
			MqPut(pMergeMQ,pMsg);
		}
	}
}

TCB TIdleTask;
volatile int IdleCount;

void IdleTask(void *arg)  __attribute__ ( ( noreturn ) );
void IdleTask(void *arg)
{
	while(1)
	{
		++IdleCount;
	}
}

int main(void)
{
	long baud;

	// Setup Timer
	TCCR0B = BIT(CS00) | BIT(CS01);
	TIMSK0 = BIT(TOIE0);
	//Initialize operating system
	OSInit();
	OS_InitMalloc(0,0);	//initialize heap
	CioInit();	//Initialize Device I/O
	RInit();	//Initialize Serial Drivers
	InitMessageQueueManager();	//Init Message queues
	pMidi1 = CioOpen("COM0",CIO_RDONLY | CIO_WRONLY);
	baud = 31250;
	CioXIO(pMidi1,RS232_XIO_SETBAUD,&baud);
	pMidi2 = CioOpen("COM1",CIO_RDONLY | CIO_WRONLY);
	baud = 31250;
	CioXIO(pMidi2,RS232_XIO_SETBAUD,&baud);
	pMergeMQ = MqInit(8,"MergeQ");
	/******************************
		Create Tasks
	******************************/
	CreateTask(&TIdleTask,IdleTask,256,1,"Idle",0);
	Insert(&ActiveTasks,&TIdleTask);
	CreateTask(&TMidiCh1Task,MidiCh1Task,256,10,"Midi1",pMidi1);
	Insert(&ActiveTasks,&TMidiCh1Task);
	CreateTask(&TMidiCh2Task,MidiCh2Task,256,10,"Midi2",pMidi2);
	Insert(&ActiveTasks,&TMidiCh2Task);
	CreateTask(&TMergTask,MergeTask,256,11,"Merge",pMidi1);
	StartOS();
    while (1) 
    {
    }
}

