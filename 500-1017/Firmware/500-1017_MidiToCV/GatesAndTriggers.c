/*
 * GatesAndTriggers.c
 *
 * Created: 8/8/2018 9:25:07 PM
 *  Author: Jimmy
 */ 

#include <avr/io.h>
#include "spi.h"
#include "task.h"
#include "500-1017.h"

volatile char Gates;
volatile char Triggers0_7;
volatile char Triggers8_15;

void SetGate(int bit)
{
	char sr;

	Gates |= BIT(bit);
	WriteSpi((char *)&Gates,1);
	sr = Disable();
	PORTD &= ~BIT(PORTD_LDGATES);
	PORTD |= BIT(PORTD_LDGATES);
	Enable(sr);
}

void ClearGate(int bit)
{
	char sr;

	Gates &= ~BIT(bit);
	WriteSpi((char *)&Gates,1);
	sr = Disable();
	PORTD &= ~BIT(PORTD_LDGATES);
	PORTD |= BIT(PORTD_LDGATES);
	Enable(sr);
}

void SetTrigger0_7(int bit)
{
	//----------------------------
	// These are written directly
	// to portA
	//----------------------------
	Triggers0_7 |= BIT(bit);
	PORTA = Triggers0_7;
}

void ClearTrigger0_7(int bit)
{
	//----------------------------
	// These are written directly
	// to portA
	//----------------------------
	Triggers0_7 &= ~BIT(bit);
	PORTA = Triggers0_7;
}

void SetTrigger8_15(int bit)
{
	char sr;

	Triggers8_15 |= BIT(bit);
	WriteSpi((char *)&Triggers8_15,1);
	sr = Disable();
	PORTD &= ~BIT(PORTD_LDGATES);
	PORTD |= BIT(PORTD_LDGATES);
	Enable(sr);

}

void ClearTrigger8_15(int bit)
{
	char sr;

	Triggers8_15 &= ~BIT(bit);
	WriteSpi((char *)&Triggers8_15,1);
	sr = Disable();
	PORTD &= ~BIT(PORTD_LDGATES);
	PORTD |= BIT(PORTD_LDGATES);
	Enable(sr);

}