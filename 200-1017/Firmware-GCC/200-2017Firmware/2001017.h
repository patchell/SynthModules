/*******************************************************************************
**
** header file for the 200-1017 Midi->CV board
**
*******************************************************************************/

#ifndef MIDI2001017__H
#define MIDI2001017__H

typedef struct {
	int CurChan;
	char GateFlag[8];
	unsigned int Vals[8];
}DAC_D;

#define GATEFLAG_GATEIDLE		0
#define GATEFLAG_GATEON		1
#define GATEFLAG_GATEOFF	2

#define DACCHAN_PITCH		0
#define DACCHAN_VEL			1
#define DACCHAN_CV1			2
#define DACCHAN_CV2			3
#define DACCHAN_CH4			4
#define DACCHAN_CH5			5
#define DACCHAN_CH6			6
#define DACCHAN_CH7			7

//---------------------------------------------
// External Memory
//---------------------------------------------

#define EXTERNAL_RAM_START		(0x260)
#define EXTERNAL_RAM_END		(0x7fff)

//---------------------------------------------
// Clock Frequency
//--------------------------------------------

#define CLOCKFREQ		8000000

/*******************************************************************************
** Port Defines
**
*******************************************************************************/

#define DAC_LOW		(*((volatile char *)0x8800))	/*	low byte of dac	*/
#define DAC_HIGH	(*((volatile char *)0x8000))	/*	high byte of dac	*/
#define DAC_LOAD	(*((volatile char *)0x8400))	/*	transfer data
 								 	  				 from temp reg to dac	*/
/*	clear IRQ from S/H strobe done flag	*/
#define CLEAR_STROBE_IRQ	(*((volatile char *)0x8c00))	

/*******************************************************************************
** Defines for GATE PORT
*******************************************************************************/

#define GATE_WD		(*((volatile char *)0x8200))	/* write to GATE register */

#define GATE_GATE		0	  		/*		bit 0 outputs to gate	  */
#define GATE_CLOCK		1		/* Bit 1 is CLOCK	*/
#define GATE_STARTSTOP	2		/* Bit 2 is Start Stop Bits	*/
#define GATE_RESET		3		/* Bit 3 is RESET bit	*/
#define GATE_GATE1		4		/*	general gate bit	*/
#define GATE_GATE2		5		/*	general gate bit	*/
#define GATE_GATE3		6		/*	general gate bit	*/
#define GATE_GATE4		7		/*	general gate bit	*/	

/*******************************************************************************
** Defines for DAC outputs
*******************************************************************************/

#define DAC_PITCH		0
#define DAC_VELOCITY	1
#define DAC_WHEEL		2
#define DAC_CTL1		3		 

//----------------------------------------------------
// DAC task messages
//----------------------------------------------------

#define DACMSG_SETDAC	0

typedef struct {
	char m_Chan;
	unsigned int DacVal;
	char Gate;
}DACMSG_SETDAC_PAYLOAD;

#define DACMSG_STROBEDONE	1

#endif	/*	MIDI200-1017__H	*/