/*
 * spi.c
 *
 * Created: 8/8/2018 4:50:27 PM
 *  Author: Jimmy
 */ 

 #include <avr/io.h>
 #include <avr/interrupt.h>
 #include <stdlib.h>
 #include "task.h"
 #include "semaphore.h"
 #include "spi.h"
 #include "ByteQueue.h"
 #include "Firmware100-1059D.h"
 #include "Ports.h"

static volatile int ADSRshad;

/*************************************************
	InitSpi
		Initialize the SPI port
**************************************************/

void InitSpi(void)
{
	// setup SPI interface :
	// master mode
	// enable SPI
	SPCR |= BIT(MSTR)  | BIT(SPE);
	// clock = f/16
	// select clock phase positive-going in middle of data
	// Data order MSB first
	SPCR &= ~(BIT(CPOL) | BIT(DORD) );
}

int PortFull(void)
{
	char a;
	int retval=0;
	a = SPSR;
	if(a & 0x80) retval = 1;
	return retval;
}

/*************************************************
	WriteSpi
		Write a buffer of data to the SPI port
		This routine will return when the write
		Has finished.
	parameters:
*************************************************/

void WriteSpi(char v)
{
	SPDR = v;
	while(!PortFull());
}

void WriteDAC(int v,int Sel)
{
	char t;
	char *b = (char *)&v;
	char sr;

	t = b[0];
	b[0] = b[1];
	b[1] = t;
	SPDR = b[0];
	while(!PortFull());
	SPDR = b[1];
	while(!PortFull());
	sr = Disable();
	ClearPortA(PORTA_LD_DAC);
	SetPortA(PORTA_LD_DAC);
	Enable(sr);
	SetDacSel(Sel);
}

void WriteADSRstate(int v,int unit)
{
	char portB;
	char sr;

	char *b = (char *)&ADSRshad;
	switch(v)
	{
		case ADSR_STATE_RELEASE:
			if(unit)
			{
				ADSRshad |= BIT(SPIDATA_EG1_STATE_A) | BIT(SPIDATA_EG1_STATE_B) | BIT(SPIDATA_EG1_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG1_STATE_C);
			}
			else
			{
				ADSRshad |= BIT(SPIDATA_EG2_STATE_A) | BIT(SPIDATA_EG2_STATE_B) | BIT(SPIDATA_EG2_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG2_STATE_C);
			}
			break;
		case ADSR_STATE_ATTACK:
			if(unit)
			{
				ADSRshad |= BIT(SPIDATA_EG1_STATE_A) | BIT(SPIDATA_EG1_STATE_B) | BIT(SPIDATA_EG1_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG1_STATE_A);
			}
			else
			{
				ADSRshad |= BIT(SPIDATA_EG2_STATE_A) | BIT(SPIDATA_EG2_STATE_B) | BIT(SPIDATA_EG2_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG2_STATE_A);
			}
			break;
		case ADSR_STATE_SUSTAIN:
			if(unit)
			{
				ADSRshad |= BIT(SPIDATA_EG1_STATE_A) | BIT(SPIDATA_EG1_STATE_B) | BIT(SPIDATA_EG1_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG1_STATE_B);
			}
			else
			{
				ADSRshad |= BIT(SPIDATA_EG2_STATE_A) | BIT(SPIDATA_EG2_STATE_B) | BIT(SPIDATA_EG2_STATE_C);
				ADSRshad &= ~BIT(SPIDATA_EG2_STATE_B);
			}
			break;
	}
	while(!PortFull());
	SPDR = b[0];
	while(!PortFull());
	portB = PORTB;
	sr = Disable();
	portB &= ~BIT(PORTB_LD_OUTPORT);
	PORTB = portB;
	portB |= BIT(PORTB_LD_OUTPORT);
	PORTB = portB;
	Enable(sr);
}
