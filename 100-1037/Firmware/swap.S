#include <avr/io.h>

	.section .text

	.global Disable
	.global Enable

	;------------------------------
	; Disable
	;	This function is used to
	; disable the interrupts.  Thios
	; function has the advantage
	; over just doing a cli in 
	; that if the interrupts are
	; already disabled, when Enable
	; is called, interrupts will 
	; not re-enable.
	; extern char Disable(void)
	;-------------------------------
Disable:

	in	r24,_SFR_IO_ADDR(SREG)		;get status register
	cli								;disable interrupt
	andi r24,0x80					;strip off interrupt bit
	ret								;return value in r24
	;--------------------------
	; Enable
	;	This function enables
	; interrupts.  This function
	; is passed a flag to indicate
	; if interrupts are to be 
	; enabled, or not.  If D7
	; of r25 is set, interrupts
	; will be enabled.
	; extern void Enable(char srFlag);
	;----------------------------
Enable:
	in r25,_SFR_IO_ADDR(SREG)
	or r25,r24
	out _SFR_IO_ADDR(SREG),r25
	ret


	.end
