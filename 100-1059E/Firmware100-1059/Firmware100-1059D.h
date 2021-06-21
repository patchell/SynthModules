/*
 * Firmware100_1059D.h
 *
 * Created: 11/25/2018 4:24:53 PM
 *  Author: Jimmy
 */ 


#ifndef FIRMWARE100_1059D_H_
#define FIRMWARE100_1059D_H_

#include "MessageQueue.h"

#define PORTA_SUS1		(0)		//sustain pot for enbelope 1
#define PORTA_SUS2		(1)		// sustain pot for envelope 2
#define PORTA_MIDIRESET	(2)		// MIDI Reset
#define PORTA_LD_DAC	(3)		// Load data into spi DAC
#define PORTA_DACSEL0	(4)		// Select DAC to Output Bit 0
#define PORTA_DACSEL1	(5)		// Select DAC to Output Bit 1
#define PORTA_DACSEL2	(6)		// Select DAC to Output Bit 2
#define PORTA_DACSEL3	(7)		// Select DAC to Output Bit 3

#define PORTB_LD_OUTPORT	(0)	// Spi Data load stobe
#define PORTB_NOISECLOCK	(1)	// Noise generator clock
#define PORTB_EG_DONE1_IRQ	(2)	// Envelope 1 Done interrupt
#define PORTB_CYMBALTRIG	(3)	// Cymbal trigger
#define PORTB_DAC_CLK		(4)	// Clock for analog output channels
#define	PORTB_MOSI			(5)	// SPI Master Out
#define	PORTB_MISO			(6)	
#define PORTB_SPICLK		(7)	// Spi clock

#define PORTC_I2C_SCL		(0)	// I2C clock
#define	PORTC_I2C_SDA		(1)	// I2C Data
#define	PORTC_MIDI_CLOCK	(6)	// Midi clock
#define PORTC_START_STOP	(7)	// Midi Start Stop

#define PORTD_DACDONE_IRQ	(2)	//Dac done interrupt request
#define PORTD_EG_DONE2_IRQ	(3)	// Envelope generator 1 done
#define PORTD_CLEAR_DAC_IRQ	(4)	// Clear Dac Done interrupt request
#define PORTD_DRUMTRIG1		(5)	// Drum one trigger
#define PORTD_DRUMTRIG2		(6)	// Drum two trigger
#define PORTD_DRUMTRIG3		(7)	// Drum three trigger

//---------------------------------
//	SPI Data port bit defines
//---------------------------------

#define SPIDATA_EG1_STATE_A		(0)	// ATTACK Envelope generator 1 states
#define SPIDATA_EG1_STATE_B		(1)	//SUSTAIN
#define SPIDATA_EG1_STATE_C		(2)	// Release
#define SPIDATA_EG2_STATE_A		(3)	// ATTACK Envelope Generator 2 states
#define SPIDATA_EG2_STATE_B		(4)	//SUSTAIN
#define SPIDATA_EG2_STATE_C		(5)	// Release

//---------------------------------
// global Variables
//--------------------------------

extern SEMAPHORE SMidiClock;
extern MESSAGE_QUEUE *pMsgStartStop;

//--------------------------------
// Defines for TASK StartStop
//-------------------------------

//commands for message
//
#define TASK_STARTSTOP_START		0
#define TASK_STARTSTOP_STOP			1
//-------------------------------
// Defines for Task DacTask
//-------------------------------

#define DACTASK_DACDONE		0
#define DACTASK_START		1
#define DACTASK_UPDATEDAC	2
#define DACTASK_WRITEPORT	3
#define DACTASK_WRITE_MISC	4
	//sub commands for DACTASK_WRITE_MISC
	#define WRITE_MISC_START_STOP	0
	#define WRITE_MISC_DRUM1		1
	#define WRITE_MISC_DRUM2		2
	#define WRITE_MISC_DRUM3		3
	#define WRITE_MISC_CYMBAL		4
	#define WRITE_MISC_SYNTHGATE	5

	//-----------------------------
	// enumeration for DAC channels
	//-----------------------------

enum {
	DAC_PITCH=0,
	DAC_VCO2_OFFSET,
	DAC_FILTPITCH,
	DAC_PITCHBEND,
	DAC_DRUM1PITCH,
	DAC_DRUM2PITCH,
	DAC_DRUM3PITCH,
	DAC_CYMPITCH,
	DAC_CYMLFOFREQ,
	DAC_PULSEWIDTH,
	DAC_GLIDERATE_UP,
	DAC_GLIDERATE_DOWN,
	DAC_ADSR1SUS,
	DAC_ADSR2SUS
};
//-------------------------------
// Defines for ADSR_x Tasks
//-------------------------------
#define ADSR_LEVELTRIPPED	0
#define ADSR_SUSTAIN		1
#define ADSR_GATE_ON		2
#define ADSR_GATE_OFF		3

#define ADSR_STATE_RELEASE	0
#define ADSR_STATE_ATTACK	1
#define ADSR_STATE_SUSTAIN	2

//-------------------------------
// Defines for TASK Seq
//-------------------------------

//Commands for messages

#define TASK_SEQ_TIMER			0
#define TASK_SEQ_CLEAR_SEQ		1
#define TASK_SEQ_ADD_BYTE		2
#define TASK_SEQ_SETADDR		3
#define TASK_SEQ_SENDBYTE		4
#define TASK_SEQ_STARTSTOP		5

#endif /* FIRMWARE100_1059D_H_ */