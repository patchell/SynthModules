/*
 * 500-1110_Sequencer.c
 *
 * Created: 8/22/2018 10:29:13 PM
 * Author : Jimmy
 */ 


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include "500-1110.h"
#include "task.h"
#include "ByteQueue.h"

BQ SeqMessage;
char MsgBuff[8];

#define MSG_CLOCK			1
#define MSG_TRIG			2
#define MSG_DOWNBEAT_TRUE	3
#define MSG_DOWNBEAT_FALSE	4

/*****************************************
	INT0_vect
		Provides the interrupt processing
		for the "CLOCK" input on the module
*****************************************/

void INT0_vect() __attribute__((naked));
void INT0_vect()
{
	SAVE_IRQ();
	EnterInterrupt();
	BQPut(&SeqMessage,MSG_CLOCK);
	ExitInterrupt();
	RESTORE_IRQ();
}

/*****************************************
	INT1_vect
		Provides the interrupt processing
		for the "TRIGGER" input on the module
*****************************************/

void INT1_vect() __attribute__((naked));
void INT1_vect()
{
	SAVE_IRQ();
	EnterInterrupt();
	BQPut(&SeqMessage,MSG_TRIG);
	ExitInterrupt();
	RESTORE_IRQ();
}

int GetGateEnable(int i)
{
	int rV = 0;

	switch(i)
	{
		case 0:
			if(PORTC & BIT(PORTC_SWITCH0))
				rV = 1;
			break;
		case 1:
			if(PORTC & BIT(PORTC_SWITCH1))
				rV = 1;
			break;
		case 2:
			if(PORTC & BIT(PORTC_SWITCH2))
				rV = 1;
			break;
		case 3:
			if(PORTC & BIT(PORTC_SWITCH3))
				rV = 1;
			break;
		case 4:
			if(PORTC & BIT(PORTC_SWITCH4))
				rV = 1;
			break;
		case 5:
			if(PORTC & BIT(PORTC_SWITCH5))
				rV = 1;
			break;
		case 6:
			if(PORTD & BIT(PORTD_SWITCH6))
				rV = 1;
			break;
		case 7:
			if(PORTD & BIT(PORTD_SWITCH7))
				rV = 1;
			break;
	}
	return rV;
}

void SetArmed(int v)
{
	if(v)
		PORTD |= BIT(PORTD_ARM);
	else
		PORTD &= ~BIT(PORTD_ARM);
}

void SetGate(int v)
{
	if(v)
		PORTD |= BIT(PORTD_GATE);
	else
		PORTD &= ~BIT(PORTD_GATE);
}

void SetRun(int v)
{
	if(v)
		PORTD |= BIT(PORTD_RUN);
	else
		PORTD &= ~BIT(PORTD_RUN);
}

void SetStep(int step)
{
	PORTB &= ~(BIT(PORTB_STEPSEL2) | BIT(PORTB_STEPSEL1) | BIT(PORTB_STEPSEL0));
	PORTB |= step & (BIT(PORTB_STEPSEL2) | BIT(PORTB_STEPSEL1) | BIT(PORTB_STEPSEL0));
}

TCB TSeqTask;

void SeqTask(void *arg) __attribute__((noreturn));
void SeqTask(void *arg)
{
	int c;
	int DownBeat = 0;
	int Armed = 0;
	int SeqCount = 0;
	int Run = 0;
	int Gate = 0;

	SetGate(Gate);
	SetRun(Run);
	SetArmed(Armed);
	SetStep(SeqCount);
	while(1)
	{
		c = BQget(&SeqMessage);
		switch(c)
		{
			case MSG_CLOCK:
				if(Armed)
				{
					Armed = 0;
					Run = 1;
					SetArmed(Armed);
					SetRun(Run);
					SeqCount = 0;
					SetStep(SeqCount);
					if(GetGateEnable(SeqCount))
						SetGate(1);
					else
						SetGate(0);
				}
				else if (Run)
				{
					SeqCount += 1;
					if(DownBeat)
					{
						SeqCount = 0;
						Run = 0;
						Gate = 0;
						SetRun(Run);
						SetGate(Gate);
						SetStep(SeqCount);
					}
					else if(SeqCount < 8)
					{
						SetStep(SeqCount);
						if(GetGateEnable(SeqCount))
							SetGate(1);
						else
							SetGate(0);
					}
					else
					{
						Run = 0;
						Gate = 0;
						SetGate(Gate);
						SetRun(Run);
					}
				}
				break;
			case MSG_TRIG:
				Armed = 1;
				SetArmed(Armed);
				break;
			case MSG_DOWNBEAT_TRUE:
				DownBeat = 1;
				break;
			case MSG_DOWNBEAT_FALSE:
				DownBeat = 0;
				break;
		}
	}
}

TCB TIdleTask;

/************************************************
	IdleTask
		This task is always running and never
		blocks (pends on a semaphore or other
		blocking object).
************************************************/
void IdleTask(void *arg) __attribute__((noreturn));
void IdleTask(void *arg)
{
	int DownBeatState = 0;
	while(1)
	{
		if(PORTD & BIT(PORTD_DOWNBEAT))
		{
			if(DownBeatState == 0)
			{
				DownBeatState = 1;
				BQPut(&SeqMessage,MSG_DOWNBEAT_TRUE);
			}
		}
		else
		{
			if(DownBeatState == 1)
			{
				DownBeatState = 0;
				BQPut(&SeqMessage,MSG_DOWNBEAT_FALSE);
			}
		}
	}
}

int main(void)
{
	OSInit();
	OS_InitMalloc(0,0);
	CreateTask(&TIdleTask,IdleTask,128,1,NULL,0);
	Insert(&ActiveTasks,&TIdleTask);
	CreateTask(&TSeqTask,SeqTask,128,10,NULL,0);
	Insert(&ActiveTasks,&TSeqTask);
	CreateBQ(&SeqMessage,MsgBuff,8);
	StartOS();
	//---------------------------------
	// Program will never get here
	//---------------------------------
    while (1) 
    {
    }
}

