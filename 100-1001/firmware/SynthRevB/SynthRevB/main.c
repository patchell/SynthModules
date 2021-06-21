#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "task.h"
#include "smb.h"
#include "uart.h"
#include "MessageQueue.h"
#include "MidiParse.h"
#include "chip.h"
#include "seq.h"

////////////////////////////////////////////////////////////////////////////////
volatile int Ticks;
MIDIPARSE_D MidiParseDesc;

//Task control blocks
TCB DacOutTCB,MidiInTCB,IdleTCB,AuxDacTaskTCB;
TCB TaskMidiResetTCB,TaskMidiClockTCB;

SEMAPHORE *pSemReset,*pSemClock;

//-----------------------------------
//		Timer0Init
//	Initialize Timer 0
//-----------------------------------
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
//	Timer 0 provides the real time clock services
//	that are used by the real time operating
//	system.
//************************************************
void TIMER0_OVF_vect(void) __attribute__ ((naked));
void TIMER0_OVF_vect(void)
{
	SAVE_IRQ();			//Save Context
	EnterInterrupt();	//Extra processing
	TCNT0 = 0x80;		//reload timer data
	TimerTicker();		//real time clock service
	ExitInterrupt();	//Interrupt Exit Processing
	RESTORE_IRQ();		//Restore Context
}


//***********************************************
//		reset
// Init Code
//**********************************************

void reset(void)
{
	MCUCR |= BIT(SRE);	//enable external bus
	DDRB |= BIT(0) | BIT(1) | BIT(2);	//S/H Select Bits
	GATE_PORT = 0;		//all gates 0
	LED_PORT = 0xff;	//all LEDs off
	InitSPI();			//initialize SPI port
	Timer0Init();		//initialize timer 0
	USART_Init();		//initialize midi port
}

//**********************************************
//		Tasks
//**********************************************
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
	//Initialize Parser Descriptor block
	InitMidiParseDesc(&MidiParseDesc);
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
		//-----------------------------
		// Wait for MidiParser to
		// decode a MIDICLOCK real
		// time message
		//-----------------------------
		PendSemaphore(pSemClock,0);
		//-----------------------------
		// Delay for 1.0 mSec to make
		// a 1.0mSec pulse on the Midi
		// Clock output
		//-----------------------------
		TimeDelay(1);
		//-----------------------------
		// Set the midi clock output
		// back to zero
		//-----------------------------
		ClearGatePort(GATE_CLOCK);
	}
}

//************************************************
//		TaskMidiReset
//	Generates a pulse on the Midi Reset Output
// When the semaphore for this task is
// posted, we assume that the port
// bit that corresponds to the RESET
// function has been set.  We then do
// a time delay of 10mSec and then
// reset the bit that corresponds to
// RESET
//************************************************

void TaskMidiReset(void *arg)  __attribute__ ( ( noreturn ) );
void TaskMidiReset(void *arg)
{
	while(1)
	{
		//------------------------------
		// Wait for the MidiParser to
		// decode a Reset Real time
		// message.
		//------------------------------
		PendSemaphore(pSemReset,0);	
		TimeDelay(10);	//delay an extra 10mS
		//------------------------------
		// Set the RESET output back to
		// zero
		//------------------------------
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
		i++;	//busy work for the idle task
	}
}


//**********************************************
//		Startup
//**********************************************
int main()
{
	Disable();	//disable interrupts
	reset();	//initialize stuff
	//initialize memory allocation
	OS_InitMalloc(0, 0);
	//initialize real time OS
	OSInit();
	//------------------------------
	// Create tasks and put their
	// Task Control Blocks into the
	// priority queue
	//------------------------------
	CreateTask(&MidiInTCB,MidiIn,256,10,0);
	Insert(&ActiveTasks,&MidiInTCB);
	CreateTask(&IdleTCB,TaskIdle,256,1,0);
	Insert(&ActiveTasks,&IdleTCB);
	CreateTask(&TaskMidiClockTCB,TaskMidiClock,256,5,0);
	Insert(&ActiveTasks,&TaskMidiClockTCB);
	CreateTask(&TaskMidiResetTCB,TaskMidiReset,256,5,0);
	Insert(&ActiveTasks,&TaskMidiResetTCB);
	//-----------------------------------
	// Initialize the step sequencer
	//----------------------------------
	InitSeq();
	//----------------------------------
	// Create the semaphores for their
	// respective tasks.
	//-----------------------------------
	pSemClock = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING);
	pSemReset = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING);
	//-----------------
	// Run the tasks
	// StartOS will
	// never return
	//-----------------
	StartOS();
	return 0;
}

