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
	in r25,_SFR_IO_ADDR(SREG)		;status reg in r24
	or r25,r24						;or with status reg
	out _SFR_IO_ADDR(SREG),r25		;restored status register
	ret

	.end
