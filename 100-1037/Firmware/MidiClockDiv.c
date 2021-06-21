#include <avr/io.h>
#include "1001037Midi.h"

//-------------------------
// the bits in PortC are
// defined as the following:
//	D0.....24ppQ (pulses per quarter note
//	D1.....12ppQ
//	D2......8ppQ
//	D3......4ppQ
//	D4......2ppQ
//	D5......1ppQ
//	D6......Half Note
//	D7......Whole Note
//-------------------------------

char DivClk1,DivClk1Carry,DivClk2;

void MidiClockDiv(int mode)
{
	/******************************
	**	MidiClockDiv
	**		This function increments
	**	the midi clock divider by "1"
	**
	** parameter:
	**	mode....mode=1, inc and set port C bits
	**			mode=0, set portC bits to 0
	********************************/
	if(mode)
	{
		if(DivClk1 == 0)
		{
			DivClk1 = 3;
			if(DivClk1Carry == 0)
			{
				DivClk1Carry = 2;
				if(DivClk2 == 0)
				{
					DivClk2 = 0x3f;
				}
				else
				{
					DivClk2--;
				}
			}
			else
			{
				DivClk1Carry--;
			}
		}
		else
		{
			DivClk1--;
		}
		PORTC = (DivClk2 << 2) | (DivClk1 & 0x03);
	}
	else
	{
		PORTC = 0;
	}
}

void MidiClockDivReset()
{
	DivClk2 = 0x3f;
	DivClk1 = 0x3;
	DivClk1Carry = 2;
	PORTC = 0;
	PORTC = (DivClk2 << 2) | (DivClk1 & 0x03);

}

void MidiStart()
{
	DivClk2 = 0x3f;
	DivClk1 = 0x3;
	DivClk1Carry = 2;
	PORTC = 0;
	PORTA |= BV(MIDI_START_BIT);
	PORTC = (DivClk2 << 2) | (DivClk1 & 0x03);
}

void MidiStop()
{
	PORTA &= ~(BV(MIDI_START_BIT));
}

void MidiReset()
{
	MidiStop();
	PORTA |= BV(MIDI_RESET_BIT);
	PORTA &= ~(BV(MIDI_RESET_BIT));
}
