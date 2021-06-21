/*
 * 500-1017_MidiToCV.c
 *
 * Created: 8/5/2018 9:00:20 PM
 * Author : Jimmy
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include "task.h"
#include "pq.h"
#include "cio.h"
#include "rs232.h"
#include "MessageQueue.h"
#include "DacQueue.h"
#include "spi.h"
#include "MidiParse.h"
#include "main.h"
#include "GateAndTriggers.h"
#include "Settings.h"
#include "500-1017.h"	//port defines

IOCB *pMidi1;
ECB *pTimerEvent;
MESSAGE_QUEUE *pDacMessages;
SETTINGS Settings;

void INT0_vect(void) __attribute__ ((naked));
void INT0_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	PORTD &= ~BIT(PORTD_CLRIRQ);	//set clr irq to 0
	PORTD |= BIT(PORTD_CLRIRQ);		//set back to 1
	PostSemaphore(pTimerEvent,0);
	ExitInterrupt();
	RESTORE_IRQ();
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

TCB TTimerTask;
void TimerTask(void *arg)  __attribute__ ( ( noreturn ) );
void TimerTask(void *arg)
{
	MSG *pMsg;

	while(1)
	{
		PendSemaphore(pTimerEvent,0);
		pMsg = NewMSG(0);
		pMsg->MsgCmd = DAC_TIMER;
		MqPut(pDacMessages,pMsg);
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

TCB TDacTask;

void DacTask(void *arg)  __attribute__ ( ( noreturn ) );
void DacTask(void *arg)
{
	MSG *pMsg;
	unsigned *pDACVals;	//Dac Values
	int CurrentDac=0;	//next DAC to refresh
	int DacVal;
	int DacCh;
	int GateFlag;
	DACQUEUE *pDacQ;
	PAYLOAD *pPayload;

	pDacQ = NewDACQueue(8);
	pDACVals = malloc(8 * sizeof(unsigned));
	/*****************************************
	** Format for payload in message
	**
	** Payload[0] -> Channel Number
	** Payload[1..2] -> Dac Value
	*****************************************/
	while(1)
	{
		pMsg = MqGet(pDacMessages);
		switch(pMsg->MsgCmd)
		{
			case DAC_SETDAC:
				//--------------------------------
				// Add the new DAC value to the
				// queue so that it will be set
				// as soon as possible
				//--------------------------------
				pPayload = (PAYLOAD *)pMsg->Payload;
				AddDacVal(pDacQ,pPayload->m_Value,pPayload->m_Channel,pPayload->m_GateFlag);
				break;
			case DAC_TIMER:
				//-----------------------------------
				// Check the Queue and do those first
				// before doing a regular refresh of
				// the bank of sample holds
				//-----------------------------------
				if(pDacQ->m_nItems)	//anything in queue?
				{	//new value
					DacVal = GetDacVal(pDacQ);
					GateFlag = GetGateFlag(pDacQ);
					DacCh = GetDacChan(pDacQ);
					WriteSpi((char *)&DacVal,2);
					//set sample hold address
					PORTB &= ~(BIT(PORTB_DACSEL2) | BIT(PORTB_DACSEL1) | BIT(PORTB_DACSEL0) );
					PORTB |= DacCh & (BIT(PORTB_DACSEL2) | BIT(PORTB_DACSEL1) | BIT(PORTB_DACSEL0) );
					//load spi data into DAC
					PORTB &= ~BIT(PORTB_LDDACS);
					PORTB |= BIT(PORTB_LDDACS);
					if(GateFlag & PAYLOAD_GATEON)
					{
						SetGate(GateFlag & 0x7);
					}
					else if(GateFlag & PAYLOAD_GATEOFF)
					{
						ClearGate(GateFlag & 0x7);
					}
				}
				else
				{	//refresh
					WriteSpi((char *)&pDACVals[CurrentDac],2);
					//set sample hold address
					PORTB &= ~(BIT(PORTB_DACSEL2) | BIT(PORTB_DACSEL1) | BIT(PORTB_DACSEL0) );
					PORTB |= CurrentDac++ & (BIT(PORTB_DACSEL2) | BIT(PORTB_DACSEL1) | BIT(PORTB_DACSEL0) );
					//load spi data into DAC
					PORTB &= ~BIT(PORTB_LDDACS);
					PORTB |= BIT(PORTB_LDDACS);
				}
				break;
		}
		DeleteMSG(pMsg);
	}
}

TCB TMidiTask;
void MidiTask(void *arg) __attribute__ ( ( noreturn ) );
void MidiTask(void *arg)
{
	int c;
	IOCB *pMidi = (IOCB *)arg;
	MIDIPARSE_D *pMidParse;
	pMidParse = newMidiParseDescriptor();
	InitMidiParseDesc(pMidParse);
	while(1)
	{
		c = CioGetC(pMidi);
		ParseMidi(pMidParse,c);
	}
}

void InitPortD(void)
{
	//set line to output mode
	DDRD = BIT(PORTD_CLRIRQ) | BIT(PORTD_LDGATES) | BIT(PORTD_TRIGS);
	//set output port lines high
	PORTD = BIT(PORTD_CLRIRQ) | BIT(PORTD_LDGATES) | BIT(PORTD_TRIGS);
	//Enable INT0 interrupt
	//Default is sense at low level
	EIMSK |= BIT(INT0);
}

int main(void)
{
    int baud;

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
	pDacMessages = MqInit(8,"DacMsg");
	pTimerEvent = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"Timer");
	InitSpi();
	/******************************
		Create Tasks
	******************************/
	CreateTask(&TIdleTask,IdleTask,256,1,"Idle",0);
	Insert(&ActiveTasks,&TIdleTask);
	CreateTask(&TMidiTask,MidiTask,256,8,"MIDI",pMidi1);
	Insert(&ActiveTasks,&TMidiTask);
	CreateTask(&TDacTask,DacTask,256,10,"DAC",0);
	Insert(&ActiveTasks,&TDacTask);
	CreateTask(&TTimerTask,TimerTask,256,9,"Timer",0);
	Insert(&ActiveTasks,&TTimerTask);
	/******************************
		Start the operating system
	******************************/
	StartOS();
    while (1) 
    {
    }
}

