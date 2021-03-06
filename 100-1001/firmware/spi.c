/******************************************************************************
**
** These are the routines for talking to the SPI port
**
** The SPI port will output a 16 bit integer to the DAC
**  It will then latch the data into the appropriate DAC register
**
*******************************************************************************/
#include <io8515v.h>
#include <macros.h>
#include "smb.h"

/*******************************************************************************
**
** This routine initializes the SPI port and gets it ready for use
**
*******************************************************************************/
void InitSPI(void)
{
	DDRB |= 0xb0;	/*	set SS pin to output	*/
	SPCR = SPI_SPCR_SPE | SPI_SPCR_CPHA | SPI_SPCR_MSTR;	/*	enable SPI port	*/	
	MCUCR |= 0x80;	/*	enable external memory	*/
}

/*******************************************************************************
** Wait for data to exit from SPI port
** Returns true while data is still transmiting
*******************************************************************************/

int PortFull(void)
{
	char a;
	int retval=0;
	a = SPSR;
	if(a & 0x80) retval = 1;
	return retval;
}

/*******************************************************************************
This routine sends data d to DAC port port
*******************************************************************************/
static const int DacLUT[8] = {
	0xa000,
	0xa400,
	0xa800,
	0xac00,
	0xb000,
	0xb400,
	0xb800,
	0xbc00
};


void SendData(int d,int port)
{
	union {
		int v;
		char b[2];
	}convert;
	convert.v = d;
	SPDR = convert.b[1];	/*	get MSB of data	*/
	while(!PortFull());			/*	wait for data to be transmitted	*/
	SPDR = convert.b[0];			/*	get LSB of data	*/
	while(!PortFull());		/*	wait for data to be transmitted	*/
	*((volatile char *)DacLUT[port]) = 0;	//dummy write to load DAC	*/	
}
