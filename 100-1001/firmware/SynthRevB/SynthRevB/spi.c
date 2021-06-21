/******************************************************************************
**
** These are the routines for talking to the SPI port
**
** The SPI port will output a 16 bit integer to the DAC
**  It will then latch the data into the appropriate DAC register
**
*******************************************************************************/
#include <avr/io.h>
#include <avr/interrupt.h>
#include "task.h"
#include "smb.h"
#include "spi.h"

SPIBUFF *pSPIbuff;

/*******************************************************************************
**
** This routine initializes the SPI port and gets it ready for use
**
*******************************************************************************/
void InitSPI(void)
{
	DDRB |= 0xb0;	/*	set SS pin to output	*/
	SPCR = SPI_SPCR_SPE | SPI_SPCR_CPHA | SPI_SPCR_MSTR | SPI_SPCR_CPOL;	/*	enable SPI port	*/	

}

/*******************************************************************************
** Wait for data to exit from SPI port
** Returns true while data is still transmitting
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
	0xac00,	//Dac 0
	0xa400,
	0xa800,
	0xa000,
	0xb000,
	0xb400,
	0xb800,
	0xbc00	//Dac 7
};


void SPI_STC_vect(void)  __attribute__ ((naked));
void SPI_STC_vect(void)
{
	SAVE_IRQ();
	if(pSPIbuff->m_nChars == 0)
	{

	}
	else
	{
		SPDR = pSPIbuff->m_buff[pSPIbuff->m_tail++];
		if(pSPIbuff->m_tail == pSPIbuff->m_Bsize)
			pSPIbuff->m_tail = 0;
		pSPIbuff->m_nChars--;
	}
	RESTORE_IRQ();
}

void SendData(int d,int port)
{
	union {
		int v;
		char b[2];
	}convert;
	convert.v = d;


	SPDR = convert.b[1];	/*	get MSB of data	*/
	while(!PortFull());		/*	wait for data to be transmitted	*/
	SPDR = convert.b[0];	/*	get LSB of data	*/
	while(!PortFull());		/*	wait for data to be transmitted	*/
	*((volatile char *)DacLUT[port]) = 0;	//dummy write to load DAC	*/	
}
