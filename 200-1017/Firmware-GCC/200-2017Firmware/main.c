#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "task.h"
#include "system.h"
#include "2001017.h"
#include "chip.h"
#include "MidiParse.h"
#include "Uart.h"
#include "MessageQueue.h"

volatile int Ticks;
MIDIPARSE_D MidiParseDesc;

TCB DacOutTCB,MidiInTCB,IdleTCB,AuxDacTaskTCB;
TCB TaskMidiResetTCB,TaskMidiClockTCB;

MESSAGE_QUEUE *pMsgDac;
SEMAPHORE *pStrobDone;
SEMAPHORE *pSemReset,*pSemClock;

////////////////////////////////////////////////////////////////////////////////

void InitINT0Irq()
{
	//----------------------
	// Set INT0 to trigger
	// on Rising Edge
	//----------------------
	MCUCR |= BIT(ISC01) | BIT(ISC00);
	CLEAR_STROBE_IRQ = 0;	//clear flag
	GICR |= BIT(INT0);
}

//*************************************************
//		INT0_vect
//	This is the interrupt vector for the DAC strobe
// done.
//*************************************************
void INT0_vect(void) __attribute__ ((naked));
void INT0_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
    CLEAR_STROBE_IRQ = 0;	//reset interrupt
	//Notify system that Dac Write is done
	PostSemaphore(pStrobDone,0);
	ExitInterrupt();
	RESTORE_IRQ();
}

//**************************************************
// Trigger In Interrupt (Front panel jack
//**************************************************

void INT1_vect(void) __attribute__ ((naked));
void INT1_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	ExitInterrupt();
	RESTORE_IRQ();
}

//*******************************************
// Timer 0
//*******************************************

void Timer0Init(void)
{
	TCCR0 = 0x00;	//stop timer
	TCNT0 = 0x80;	//set count register
	OCR0 = 0xff;	//set output compare
	//Divide clock by 64
	TCCR0 = BIT(CS01) | BIT(CS00); //start timer
	TIMSK |= BIT(TOIE0);
}

//************************************************
//		TIMER0_OVF_vect
//	Timer 0 provide the real time clock services
//	that are used by the real time operating
//	system.
//************************************************
void TIMER0_OVF_vect(void) __attribute__ ((naked));
void TIMER0_OVF_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	TCNT0 = 0x80;
	++Ticks;
	TimerTicker();	//call OS timer services
	ExitInterrupt();
	RESTORE_IRQ();
}

//****************************************
// Timer 1
//		Provides the clock for the DAC
// system.
//****************************************

void TIMER1_OVF_vect(void) __attribute__ ((naked));
void TIMER1_OVF_vect(void)
{
	SAVE_IRQ();
	//-----------------
	// Reload timer
	// counter reg
	//-----------------
	EnterInterrupt();
	TCNT1H = 0xff;
	TCNT1L = 0x83;
	ExitInterrupt();
	RESTORE_IRQ();
}

void Timer1IrqInit()
{
	//---------------------
	// Stop Timer
	//---------------------
	TCCR1B = 0;
	//----------------------
	// Init Counter
	//----------------------
	TCNT1H = 0xff;
	TCNT1L = 0x83;
	//-----------------------
	// Init Compare Register
	//-----------------------
	OCR1BH = 0xff;
	OCR1BL = 0xf8;
	//----------------------
	// Start the timer
	//----------------------
	TCCR1A = BIT(COM1B0);	//Toggle OC1B
	TCCR1B = BIT(CS11);	//clk/8
	DDRE |= 0x04;
	TIMSK |= BIT(TOIE1);
}

//***********************************************
// Tasks
//***********************************************
//	DacOut
//		This function is a TASK and will never
//	return.
//		This task manages the output to the DACs
//***********************************************
void DacOut(void *arg)  __attribute__ ( ( noreturn ) );
void DacOut(void *arg)
{
	MSG *pMSG;
	DACMSG_SETDAC_PAYLOAD *pPayload;
	char flag;
	DAC_D *pDacs;
	int i;

	pDacs = malloc(sizeof(DAC_D));
	//--------------------------------------
	// Initialize the Dac Descriptor block
	//--------------------------------------
	for(i=0;i<8;++i)
	{
		pDacs->GateFlag[i] = GATEFLAG_GATEIDLE;
		pDacs->Vals[i] = 0;
	}
	pDacs->CurChan = 0;
	//-------------------------------
	// get the process started
	//-------------------------------
	PostSemaphore(pStrobDone,0);
	while(1)
	{
		//---------------------------
		// wait for a message
		//---------------------------
		pMSG = MqGet(pMsgDac);
		//---------------------------
		// Decode the message command
		//---------------------------
		switch(pMSG->MsgCmd)
		{
			case DACMSG_SETDAC:
				//-------------------------------
				// we have a new DAC value
				//-------------------------------
				pPayload = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
				//we set the current channle to the
				//channel of the new dac value
				//this way there is a minimum
				//amount of latency
				pDacs->CurChan = pPayload->m_Chan;
				//set the value of the dac
				pDacs->Vals[pDacs->CurChan] = pPayload->DacVal;
				//set the gate flag
				pDacs->GateFlag[pDacs->CurChan] = pPayload->Gate;
				break;
			case DACMSG_STROBEDONE:
				//--------------------------------
				// This is what the task normally
				// does, it goes round robin in
				// the list of DAC values and
				// outputs them one by one
				//--------------------------------
				// First we take care of the gate
				//-------------------------------
				flag = pDacs->GateFlag[pDacs->CurChan];
				if(flag)	//is active gate?
				{
					switch(pDacs->CurChan)
					{
						case DACCHAN_PITCH:
							if(flag == GATEFLAG_GATEON)
								SetGatePort(GATE_GATE);
							else if (flag == GATEFLAG_GATEOFF)
								ClearGatePort(GATE_GATE);
							pDacs->GateFlag[DACCHAN_PITCH] = GATEFLAG_GATEIDLE;
							break;
						case DACCHAN_VEL:	//no gate for these
						case DACCHAN_CV1:
						case DACCHAN_CV2:
							pDacs->GateFlag[pDacs->CurChan] = GATEFLAG_GATEIDLE;
							break;
						case DACCHAN_CH4:
							if(flag == GATEFLAG_GATEON)
								SetGatePort(GATE_GATE1);
							else if (flag == GATEFLAG_GATEOFF)
								ClearGatePort(GATE_GATE1);
							pDacs->GateFlag[DACCHAN_CH4] = GATEFLAG_GATEIDLE;
							break;
						case DACCHAN_CH5:
							if(flag == GATEFLAG_GATEON)
								SetGatePort(GATE_GATE2);
							else if (flag == GATEFLAG_GATEOFF)
								ClearGatePort(GATE_GATE2);
							pDacs->GateFlag[DACCHAN_CH5] = GATEFLAG_GATEIDLE;
							break;
						case DACCHAN_CH6:
							if(flag == GATEFLAG_GATEON)
								SetGatePort(GATE_GATE3);
							else if (flag == GATEFLAG_GATEOFF)
								ClearGatePort(GATE_GATE3);
							pDacs->GateFlag[DACCHAN_CH6] = GATEFLAG_GATEIDLE;
							break;
						case DACCHAN_CH7:
							if(flag == GATEFLAG_GATEON)
								SetGatePort(GATE_GATE4);
							else if (flag == GATEFLAG_GATEOFF)
								ClearGatePort(GATE_GATE4);
							pDacs->GateFlag[DACCHAN_CH7] = GATEFLAG_GATEIDLE;
							break;
					}
				}
				//----------------------------------------
				// Gates have been taken care of, now
				// we go to the next channel and refresh
				// that sample and hold
				//-----------------------------------------
				pDacs->CurChan++;
				if(pDacs->CurChan == 8) pDacs->CurChan = 0;
				DAC_LOW = LO(pDacs->Vals[pDacs->CurChan]);
				DAC_HIGH = HI(pDacs->Vals[pDacs->CurChan]);
				PORTB = pDacs->CurChan;
				DAC_LOAD = 0;
				break;
		}
		DeleteMSG(pMSG);
	}
}

void AuxDacTask(void *arg)  __attribute__ ( ( noreturn ) );
void AuxDacTask(void *arg)
{
	MSG *pMSG;

	while(1)
	{
		PendSemaphore(pStrobDone,0);
		pMSG = NewMSG(0);
		pMSG->MsgCmd = DACMSG_STROBEDONE;
		MqPut(pMsgDac,pMSG);
	}
}

//*****************************************************
//		MidiIn
//	This function is a TASK.  It never returns
//	This is the task that handle data from the MIDI
//	port.
//
//	parameters:
//		arg.....pointer to a list of arguments for the task
//*****************************************************
void MidiIn(void *arg)  __attribute__ ( ( noreturn ) );
void MidiIn(void *arg)
{
	char c;	//character from midi port

	while(1)	//infinite loop
	{
		c = USART_GetC();	//get character from midi port
		ParseMidi(&MidiParseDesc,c);	//parse byte
	}
}

//*************************************************
//		TaskMidiClock
// Generates a pulse on the Midi Clock output
//*************************************************

void TaskMidiClock(void *arg)  __attribute__ ( ( noreturn ) );
void TaskMidiClock(void *arg)
{
	while(1)
	{
		PendSemaphore(pSemClock,0);
		TimeDelay(10);
		ClearGatePort(GATE_CLOCK);
	}
}

//************************************************
//		TaskMidiReset
//	Generates a pulse on the Midi Reset Output
//************************************************

void TaskMidiReset(void *arg)  __attribute__ ( ( noreturn ) );
void TaskMidiReset(void *arg)
{
	while(1)
	{
		PendSemaphore(pSemReset,0);	//wat for it
		TimeDelay(10);	//delay an extra 10mS
		ClearGatePort(GATE_RESET);	//clear bit
	}
}

//************************************************
//		TaskIdle
//	The Idle task does nothing but endlessly
//	incrementing the variable i.  An Idle task
//	task is required by the OS and it is not
//	allowed to use any blocking objects, such
//	as PendSemaphore, etc.
//************************************************
void TaskIdle(void *arg)  __attribute__ ( ( noreturn ) );
void TaskIdle(void *arg)
{
	volatile int i=0;
	while(1)
	{
		i++;
	}
}

//***********************************************
// Init Code
//**********************************************

void reset(void)
{
	MCUCR |= BIT(SRE);	//enable external bus
	DDRB |= BIT(0) | BIT(1) | BIT(2);	//S/H Select Bits
	Timer0Init();
	Timer1IrqInit();	//Timer 1 IRQ
	InitINT0Irq();
	USART_Init();		//initialize midi port
	CLEAR_STROBE_IRQ = 0;
}

int main()
{
	Disable();
	reset();
	OSInit();
	OS_InitMalloc(0,0);
	InitMessageQueueManager();
	pMsgDac = MqInit(64);
	InitMidiParseDesc(&MidiParseDesc);
	CreateTask(&DacOutTCB,DacOut,256,11,0);
	Insert(&ActiveTasks,&DacOutTCB);
	CreateTask(&MidiInTCB,MidiIn,256,10,0);
	Insert(&ActiveTasks,&MidiInTCB);
	CreateTask(&IdleTCB,TaskIdle,256,1,0);
	Insert(&ActiveTasks,&IdleTCB);
	CreateTask(&AuxDacTaskTCB,AuxDacTask,256,100,0);
	Insert(&ActiveTasks,&AuxDacTaskTCB);
	CreateTask(&TaskMidiClockTCB,TaskMidiClock,256,5,0);
	Insert(&ActiveTasks,&TaskMidiClockTCB);
	CreateTask(&TaskMidiResetTCB,TaskMidiReset,256,5,0);
	Insert(&ActiveTasks,&TaskMidiResetTCB);
	pStrobDone = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING);
	pSemClock = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING);
	pSemReset = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING);
	StartOS();
	return 0;
}

