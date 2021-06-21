/*
 * AVR1284RTOS.c
 *
 * Created: 7/24/2018 9:36:49 PM
 * Author : Jimmy
 */ 

#include <avr/io.h>
#include <stdlib.h>
#include "task.h"
#include "ByteQueue.h"
#include "MessageQueue.h"
#include "Firmware100-1059D.h"
#include "MidiParse.h"
#include "Ports.h"
#include "Uart.h"
#include "Message.h"
#include "spi.h"
#include "Settings.h"

volatile int Ticks;
MIDIPARSE_D MidiParseDesc;
volatile SETTINGS Settings;

//Task control blocks
TCB TMidiIn,IdleTCB;
TCB TMidiReset,TMidiClock;
TCB TDacTask;
TCB TIdleTask;
TCB TAdcTask;
TCB TAdsr1Task,TAdsr2Task;
volatile int IdleCount;

SEMAPHORE *pSemReset,*pSemClock;
SEMAPHORE *pSemAdc;
MESSBUFF *pDacTaskMsg;
MESSBUFF *pADSR1Msg;
MESSBUFF *pADSR2Msg;

void InitTimer0()
{
	//------------------------------
	// Toggle OC0B on compare
	//------------------------------
	TCCR0A = BIT(COM0B0);
	//------------------------------
	// Set Clock prescaler /64
	//------------------------------
	TCCR0B = BIT(CS00) | BIT(CS01);
	TIMSK0 = BIT(TOIE0);
	OCR0A = 254;
	DDRB |= BIT(4);
}

void ADC_vect(void) __attribute__ ((naked));
void ADC_vect(void)
{
	int v;

	SAVE_IRQ();
	EnterInterrupt();
	v = ADC;
	ADCSRA |= BIT(ADIF);//CLEAR interrupt flag.
	PostSemaphore(pSemAdc,v << 2);
	ExitInterrupt();
	RESTORE_IRQ();
}

void TIMER0_OVF_vect(void) __attribute__ ((naked));
void TIMER0_OVF_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	TCNT0 = 255-37;
	TimerTicker();
	ExitInterrupt();
	RESTORE_IRQ();
}

//----------------------------------------
//	INT0_vect
//		Dac Done Interrupt
//----------------------------------------
void InitINT0(void)
{
	SetPortA(PORTA_LD_DAC);
	ClearPortD(PORTD_CLEAR_DAC_IRQ);
	SetPortD(PORTD_CLEAR_DAC_IRQ);
	EIMSK |= BIT(INT0);
}

void InitINT1(void)
{
	EICRA |= BIT(ISC10) | BIT(ISC11);
	EIMSK |= BIT(INT1);
}

void InitINT2(void)
{
	EICRA |= BIT(ISC20) | BIT(ISC21);
	EIMSK |= BIT(INT2);
}

void INT0_vect(void) __attribute__ ((naked));
void INT0_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	PORTD &= ~BIT(PORTD_CLEAR_DAC_IRQ);
	PORTD |= BIT(PORTD_CLEAR_DAC_IRQ);
	PostMessage(pDacTaskMsg,DACTASK_DACDONE,0,0);
	ExitInterrupt();
	RESTORE_IRQ();
}

//----------------------------------------
//	INT1_vect
//		ADSR 1 Done Interrupt
//----------------------------------------

void INT1_vect(void) __attribute__ ((naked));
void INT1_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	PostMessage(pADSR1Msg,ADSR_LEVELTRIPPED,0,0);
	ExitInterrupt();
	RESTORE_IRQ();
}

//----------------------------------------
//	INT2_vect
//		ADSR 2 Done Interrupt
//----------------------------------------
void INT2_vect(void) __attribute__ ((naked));
void INT2_vect(void)
{
	SAVE_IRQ();
	EnterInterrupt();
	PostMessage(pADSR2Msg,ADSR_LEVELTRIPPED,0,0);
	ExitInterrupt();
	RESTORE_IRQ();
}

void ADSR_1(void *arg) __attribute__ ( ( noreturn ) );
void ADSR_1(void *arg)
{
	volatile int State;
	MESSAGE *pMSG;
	int Sustain=0;

	State = ADSR_STATE_RELEASE;
	WriteADSRstate(State,0);
	while(1)
	{
		pMSG = GetMessage(pADSR1Msg);
		switch(pMSG->m_Cmd)
		{
			case ADSR_LEVELTRIPPED:
				if(ADSR_STATE_ATTACK == State)
				{
					State =ADSR_STATE_SUSTAIN;
					PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR1SUS,Sustain);
				}
				break;
			case ADSR_SUSTAIN:
				Sustain = pMSG->m_Param1;
				if(ADSR_STATE_SUSTAIN == State)
					PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR1SUS,Sustain);
				break;
			case ADSR_GATE_ON:
				State = ADSR_STATE_ATTACK;
				PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR1SUS,0x3ff);
				break;
			case ADSR_GATE_OFF:
				State = ADSR_STATE_RELEASE;
				PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR1SUS,0);
				break;
		}
		WriteADSRstate(State,0);
	}
}

void ADSR_2(void *arg) __attribute__ ( ( noreturn ) );
void ADSR_2(void *arg)
{
	volatile int State;
	int Sustain = 0;
	MESSAGE *pMSG;

	State = ADSR_STATE_RELEASE;
	WriteADSRstate(State,1);
	while(1)
	{
		pMSG = GetMessage(pADSR2Msg);
		switch(pMSG->m_Cmd)
		{
			case ADSR_LEVELTRIPPED:
				if(ADSR_STATE_ATTACK == State)
				{
					State =ADSR_STATE_SUSTAIN;
					PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR2SUS,Sustain);
				}
				break;
			case ADSR_SUSTAIN:
				Sustain = pMSG->m_Param1;
				if(ADSR_STATE_SUSTAIN == State)
					PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR2SUS,Sustain);
				break;
			case ADSR_GATE_ON:
				State = ADSR_STATE_ATTACK;
				PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR2SUS,0x3ff);
				break;
			case ADSR_GATE_OFF:
				State = ADSR_STATE_RELEASE;
				PostMessage(pDacTaskMsg,DACTASK_UPDATEDAC,DAC_ADSR2SUS,0);
				break;
		}
		WriteADSRstate(State,1);
	}
}

void ADCTask(void *arg) __attribute__ ( ( noreturn ) );
void ADCTask(void *arg)
{
	int v;
	int chan;

	chan = 0;
	ADCSRA |= BIT(ADEN);	//enable A/D converter
	ADMUX = chan;			//set ADC channel
	ADCSRA |= BIT(ADSC);	//start conversion
	ADCSRA |= BIT(ADIE) | BIT(ADPS2) | BIT(ADPS1) | BIT(ADPS0);	//enable interrupt
	while(1)
	{
		//get value from ADC
		v = PendSemaphore(pSemAdc,0);
		if(chan)
		{
			PostMessage(pADSR1Msg,ADSR_SUSTAIN,v,v);
			chan = 0;
		}
		else
		{
			PostMessage(pADSR2Msg,ADSR_SUSTAIN,v,v);
			chan = 1;
		}
		TimeDelay(50);
		ADMUX = chan;			//set ADC channel
		ADCSRA |= BIT(ADSC);	//start conversion
	}
}

static int DacValues[14] = {
	0x100,0x100,0x100,0x100,
	0X100,0x100,0x100,
	0x100,0x100,0x100,0x100,
	0x100,0x100
};


void DacTask(void *arg) __attribute__ ( ( noreturn ) );
void DacTask(void *arg)
{
	MESSAGE *pMsg;
	int i = 0;
	int a;

	PostMessage(pDacTaskMsg,DACTASK_START,0,0);
	while(1)
	{
		pMsg = GetMessage(pDacTaskMsg);
		switch(pMsg->m_Cmd)
		{
			case DACTASK_DACDONE:
			case DACTASK_START:
				//-------------------------------
				//	This is where we end up when
				// the DAC done interrupt is fired
				//-------------------------------
//				if(12 == i)
//				{
//					DacValues[i] += 100;
//					if(0x3ff < DacValues[i])
//						DacValues[i] = 0;
//				}
				WriteDAC(DacValues[i],i);
				++i;	//increment DAC index
				if(i == 14)	//all 14 channels updated?
					i = 0;	//wrap when end is reached
				break;
			case DACTASK_UPDATEDAC:
				//--------------------------------
				// Update the shadow for the DAC
				// Change current index to that
				// DAC so it will be updated on
				// next cycle.
				//-------------------------------
				i = pMsg->m_Param1;
				DacValues[i] = pMsg->m_Param2;
				break;
			case DACTASK_WRITEPORT:
				//-------------------------------
				// write to the SPI output port
				// (74HC595)
				//-------------------------------
				WriteSpi(pMsg->m_Param1);
				ClearPortB(PORTB_LD_OUTPORT);
				SetPortB(PORTB_LD_OUTPORT);
				break;
			case DACTASK_WRITE_MISC:
				//-------------------------
				// Param1 is the OP-CODE
				//		Bit 0: Clear/Set
				//		Bit3->1:Pin to change
				//			0:Start/Stop
				//			1:Drum1 Trig
				//			2:Drum2 Trig
				//			3:Drum3 Trig
				//			4:Cymbal Trig
				//			5:Synth GATE
				// Param2 is the value
				//	The reason for this is
				// so that we can synchronize
				// these events with changes
				// in the DAC values.
				//------------------------
				a = pMsg->m_Param1 & 1;
				switch(pMsg->m_Param1>>1)
				{
					case WRITE_MISC_START_STOP:
						if(a)
							SetPortC(PORTC_START_STOP);
						else
							ClearPortC(PORTC_START_STOP);
						break;
					case WRITE_MISC_DRUM1:
						if(a)
							SetPortD(PORTD_DRUMTRIG1);
						else
							ClearPortD(PORTD_DRUMTRIG1);
						break;
					case WRITE_MISC_DRUM2:
						if(a)
							SetPortD(PORTD_DRUMTRIG2);
						else
							ClearPortD(PORTD_DRUMTRIG2);
						break;
					case WRITE_MISC_DRUM3:
						if(a)
							SetPortD(PORTD_DRUMTRIG3);
						else
							ClearPortD(PORTD_DRUMTRIG3);
						break;
					case WRITE_MISC_CYMBAL:
						if(a)
							SetPortB(PORTB_CYMBALTRIG);
						else
							ClearPortB(PORTB_CYMBALTRIG);
						break;
					case WRITE_MISC_SYNTHGATE:
						break;
				}
				break;
		}
	}
}

void MidiIn(void *arg)  __attribute__ ( ( noreturn ) );
void MidiIn(void *arg)
{
	volatile int c;
	MIDIPARSE_D *pMidDesc;

	pMidDesc = newMidiParseDescriptor();
	InitMidiParseDesc(pMidDesc);
	pMidDesc = malloc(sizeof(MIDIPARSE_D));
	while(1)
	{
		c = USART_GetC();	//get a character from the midi port
		ParseMidi(pMidDesc, c);
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
		ClearPortC(PORTC_MIDI_CLOCK);
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
		TimeDelay(2);	//delay an extra 10mS
		//------------------------------
		// Set the RESET output back to
		// zero
		//------------------------------
		ClearPortA(PORTA_MIDIRESET);	//clear bit
	}
}

//************************************************
//		IdleTask
//	The IdleTask just spins it's wheels.  This
// Task is unique in that it is not allowed
// to use any blocking objects, i.e. Semaphores
// and such.  So only do stuff here that does
// not have to wait for something else to happen.
//************************************************
void IdleTask(void *arg)  __attribute__ ( ( noreturn ) );
void IdleTask(void *arg)
{
	while(1)
	{
		IdleCount++;
	}
}

void Init()
{
	DDRD = 0xf0;
	DDRC = 0xc0;
	DDRB = 0xbb;
	DDRA = 0xfc;
	Settings.m_CH1_MidiChannel = 0;
	Settings.m_CH2_Drum1 = 9;
	Settings.m_CH3_Drum2 = 10;
	Settings.m_CH4_Drum3 = 11;
	Settings.m_CH5_Cymbal = 12;
}

int main(void)
{
    //--------------------------
	// Initialize the system
	//--------------------------
	Disable();
	Init();
	InitPorts();
	InitTimer0();
	OS_InitMalloc(0,0);	//initialize heap
	InitINT0();
	OSInit();	//Initialize RTOS
	InitSpi();
	USART_Init();
	//-----------------------------
	// Initialize Message Objects
	//-----------------------------
	InitMessageQueueManager();	//Init Message queues
	pDacTaskMsg = NewMessageBuffer(16);
	pADSR1Msg = NewMessageBuffer(8);
	pADSR2Msg = NewMessageBuffer(8);
	pSemClock = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"Midi Clock Sem");
	pSemReset = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"Midi Reset Sem");
	pSemAdc = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"Adc Sem");
	//-----------------------------
	//	Create Tasks
	//-----------------------------
	CreateTask(&TAdcTask,ADCTask,256,3,"ADC",0);
	Insert(&ActiveTasks,&TAdcTask);
	CreateTask(&TIdleTask,IdleTask,256,1,"Idle Task",0);
	Insert(&ActiveTasks,&TIdleTask);
	CreateTask(&TDacTask,DacTask,256,20,"Dac Task",0);
	Insert(&ActiveTasks,&TDacTask);
	CreateTask(&TMidiClock,TaskMidiClock,256,2,"MidiClock",0);
	Insert(&ActiveTasks,&TMidiClock);
	CreateTask(&TMidiReset,TaskMidiReset,256,2,"Midi Reset",0);
	Insert(&ActiveTasks,&TMidiReset);
	CreateTask(&TMidiIn,MidiIn,256,10,"Midi In",0);
	Insert(&ActiveTasks,&TMidiIn);
	CreateTask(&TAdsr1Task,ADSR_1,256,3,"Adsr 1",0);
	Insert(&ActiveTasks,&TAdsr1Task);
	CreateTask(&TAdsr2Task,ADSR_2,256,3,"Adsr 2",0);
	Insert(&ActiveTasks,&TAdsr2Task);
	 InitSeq();
	InitINT1();
	InitINT2();
	StartOS();
    while (1) // Never gets here.
    {
    }
}

