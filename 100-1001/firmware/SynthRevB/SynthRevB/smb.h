/*******************************************************************************
**
** smb.h
**
** This is the header file for the Synth Module Board AVR controller
**
*******************************************************************************/

#ifndef SMB__H
#define SMB__H

#ifndef BIT
#define BIT(x)	((1 << x))
#endif

#define LO7(x) (x & 0x7f)
#define HI7(x) ((x >> 7) & 0x7f)

//*************************************
//		Defines for the Gate Port
//*************************************
#define GATE_GATE		0	//gate signal
#define GATE_RESET		1	//midi reset
#define GATE_STARTSTOP	2	//midi Start Stop
#define GATE_CLOCK		3	//midi clock
#define GATE_SEQ0		4	//gate for sequencer 0
#define GATE_SEQ1		5
#define GATE_SEQ2		6
#define GATE_SEQ3		7

/**************************************
** hardware defines
**************************************/

#define GATE_PORT	(*((volatile char *)0xc000))
#define LED_PORT	(*((volatile char *)0xc400))
#define IN_PORT	(*((volatile char *)0xc400))
#define DAC0_LOAD	(*((volatile char *)0xa000))	//note
#define DAC1_LOAD	(*((volatile char *)0xa400))	//velocity
#define DAC2_LOAD	(*((volatile char *)0xa800))	//pressure
#define DAC3_LOAD	(*((volatile char *)0xac00))	//note bend
#define DAC4_LOAD	(*((volatile char *)0xb000))
#define DAC5_LOAD	(*((volatile char *)0xb400))
#define DAC6_LOAD	(*((volatile char *)0xb800))
#define DAC7_LOAD	(*((volatile char *)0xbc00))

#define BAUD_9600	51
#define BAUD_MIDI	15

/***************************************
** Defines for SPI Port
***************************************/

#define SPI_SPCR_SPIE	0x80	/*	interrupt enable	*/
#define SPI_SPCR_SPE	0x40	/*	SPI port enable		*/
#define SPI_SPCR_DORD_LSB	0x20	/*	SPI Data Order		*/
#define	SPI_SPCR_MSTR	0x10		/*	SPI Master	*/
#define SPI_SPCR_CPOL	0x08		/*	clock polarity	*/
#define SPI_SPCR_CPHA	0x04		/*	clock phase		*/
#define SPI_SPCR_RATE1	0x02		/*	clock rate	*/
#define SPI_SPCR_RATE0	0x01		/*	clock rate	*/

#define SPI_SPSR_SPIF	0x80	/*	Interrupt Flag	*/
#define SPI_SPSR_WCOL	0x40	/*	write colision flag	*/

/*	SPI Port access functions	*/

extern void InitSPI(void);
extern int PortFull(void);
extern void SendData(int d,int port);
extern char Disable(void);
extern void Enable(char sr);

#endif
