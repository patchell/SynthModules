#include <avr/io.h>
#include "MultiSegEvGen.h"

int main(void)
{
	char State = EVSTATE_RELEASE;
	char in;

	DDRD = 0xf0;
	DDRB = 0x0f;

	PORTD |= 0xff;
	PORTD &= State;
	PORTB &= ~EVSTATEOUT_SUSTAIN;
	PORTB |= EVSTATEOUT_RELEASE;

	while(1)
	{
		switch(State)
		{
			case EVSTATE_RELEASE:
				do {
					in = PORTD & EVGATE;
				}while(!in);
				State = EVSTATE_ATTACK;
				PORTD |= 0xff;
				PORTD &= State;
				PORTB &= ~EVSTATEOUT_RELEASE;
				PORTB |= EVSTATEOUT_ATTACK;
				break;
			case EVSTATE_ATTACK:
				do {
					in = PORTD & EVDONE;
				}while(!in);
				State = EVSTATE_SEG1;
				PORTD |= 0xff;
				PORTD &= State;
				PORTB &= ~EVSTATEOUT_ATTACK;
				PORTB |= EVSTATEOUT_SEG1;
				break;
			case EVSTATE_SEG1:
				do {
					in = PORTD & EVDONE;
				}while(!in);
				State = EVSTATE_SUSTAIN;
				PORTD |= 0xff;
				PORTD &= State;
				PORTB &= ~EVSTATEOUT_SEG1;
				PORTB |= EVSTATEOUT_SUSTAIN;
				break;
			case EVSTATE_SUSTAIN:
				do {
					in = PORTD;
				}while(!(in & EVDONE) || (in & EVGATE));
				State = EVSTATE_RELEASE;
				PORTD |= 0xff;
				PORTD &= State;
				PORTB &= ~EVSTATEOUT_SUSTAIN;
				PORTB |= EVSTATEOUT_RELEASE;
				break;	
		}
	}
}
