/*
 * spi.c
 *
 * Created: 8/8/2018 4:50:27 PM
 *  Author: Jimmy
 */ 

 #include <avr/io.h>
 #include <avr/interrupt.h>
 #include "task.h"
 #include "spi.h"

 ECB *pSPIAccess;	//semaphore to regulate access to SPI
 ECB *pSPIDone;		//semaphore indicates SPI has shifted out data

void SPI_STC_vect(void) __attribute__ ((naked));
void SPI_STC_vect(void)
{
	SAVE_IRQ();
	++InterruptCount;
	PostSemaphore(pSPIDone,0);
	ExitInterrupt();
	RESTORE_IRQ();
}

/*************************************************
	InitSpi
		Initialize the SPI port
**************************************************/

void InitSpi(void)
{
	pSPIAccess = NewSemaphore(1,SEMAPHORE_MODE_BLOCKING,"SPI Access");
	pSPIDone = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"SPI Done");
	// setup SPI interface :
	// master mode
	// enable SPI
	SPCR |= BIT(MSTR)  | BIT(SPR0) | BIT(SPR1) | BIT(SPE);
	// clock = f/16
	// select clock phase positive-going in middle of data
	// Data order MSB first
	SPCR &= ~(BIT(CPOL) | BIT(DORD) );
	SPCR |= BIT(SPIE);
}

/*************************************************
	WriteSpi
		Write a buffer of data to the SPI port
		This routine will return when the write
		Has finished.
	parameters:
		buff......pointer to buffer with data
		n.........number of characters is buffer
*************************************************/

void WriteSpi(char *buff, int n)
{
	int i;
	PendSemaphore(pSPIAccess,0);
	for(i=0;i<n;++i)
	{
		SPDR = buff[i];
		PendSemaphore(pSPIDone,0);
	}
	PostSemaphore(pSPIAccess,0);
}
