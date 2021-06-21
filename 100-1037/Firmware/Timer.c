#include <avr/io.h>
#include <avr/interrupt.h>
#include "1001037Midi.h"

void InitTimer()
{
}

void EnableTimer(int flag)
{
}

unsigned short Timer1,Timer2;

void TIMER0_OVF_vect(void) __attribute__ ((naked));
void TIMER0_OVF_vect(void)
{
	SAVE_IRQ();
	if(Timer1) --Timer1;
	if(Timer2) --Timer2;
	RESTORE_IRQ();
}
