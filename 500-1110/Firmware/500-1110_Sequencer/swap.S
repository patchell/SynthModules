#include <avr/io.h>

	.section .text

	.global Disable
	.global Enable

Disable:

	in	r24,_SFR_IO_ADDR(SREG)		;get status register
	cli								;disable interrupt
	andi r24,0x80					;strip off interrupt bit
	ret

Enable:
	in r25,_SFR_IO_ADDR(SREG)	;get the status register
	or r25,r24					;set bits in status reg
	out _SFR_IO_ADDR(SREG),r25	;save new status register
	ret

	.end
