#ifndef F1001037MIDI__H
#define F1001037MIDI__H

#define MIDI_START_BIT		0
#define MIDI_RESET_BIT		1


#ifndef BV
	#define BV(bit)			(1<<(bit))
#endif

#define SYSTEM_CLOCKRATE	8000000

extern char Disable(void);
extern void Enable(char m);

//----------------------------------------------------------------
// Macros that are used in interrupt routines for saving
// and restoring the context
// it should be noted in the save IRQ sequence that we
// set the interrupt enable bit in the value we get from
// the status register.  If we got here, interrupts were
// enabled, so we want to make sure that is how we
// exit.
//----------------------------------------------------------------

#define SAVE_IRQ()									\
	asm volatile (	"push	r31						\n\t"	\
					"in		r31, __SREG__			\n\t"	\
					"ori	r31,0x80				\n\t"	\
					"push	r31						\n\t"	\
					"push	r30						\n\t"	\
					"push	r29						\n\t"	\
					"push	r28						\n\t"	\
					"push	r27						\n\t"	\
					"push	r26						\n\t"	\
					"push	r25						\n\t"	\
					"push	r24						\n\t"	\
					"push	r23						\n\t"	\
					"push	r22						\n\t"	\
					"push	r21						\n\t"	\
					"push	r20						\n\t"	\
					"push	r19						\n\t"	\
					"push	r18						\n\t"	\
					"push	r17						\n\t"	\
					"push	r16						\n\t"	\
					"push	r15						\n\t"	\
					"push	r14						\n\t"	\
					"push	r13						\n\t"	\
					"push	r12						\n\t"	\
					"push	r11						\n\t"	\
					"push	r10						\n\t"	\
					"push	r9						\n\t"	\
					"push	r8						\n\t"	\
					"push	r7						\n\t"	\
					"push	r6						\n\t"	\
					"push	r5						\n\t"	\
					"push	r4						\n\t"	\
					"push	r3						\n\t"	\
					"push	r2						\n\t"	\
					"push	r1						\n\t"	\
					"clr	r1						\n\t"	\
					"push	r0						\n\t"	\
				);

#define RESTORE_IRQ()								\
	asm volatile (	"pop	r0						\n\t"	\
					"pop	r1						\n\t"	\
					"pop	r2						\n\t"	\
					"pop	r3						\n\t"	\
					"pop	r4						\n\t"	\
					"pop	r5						\n\t"	\
					"pop	r6						\n\t"	\
					"pop	r7						\n\t"	\
					"pop	r8						\n\t"	\
					"pop	r9						\n\t"	\
					"pop	r10						\n\t"	\
					"pop	r11						\n\t"	\
					"pop	r12						\n\t"	\
					"pop	r13						\n\t"	\
					"pop	r14						\n\t"	\
					"pop	r15						\n\t"	\
					"pop	r16						\n\t"	\
					"pop	r17						\n\t"	\
					"pop	r18						\n\t"	\
					"pop	r19						\n\t"	\
					"pop	r20						\n\t"	\
					"pop	r21						\n\t"	\
					"pop	r22						\n\t"	\
					"pop	r23						\n\t"	\
					"pop	r24						\n\t"	\
					"pop	r25						\n\t"	\
					"pop	r26						\n\t"	\
					"pop	r27						\n\t"	\
					"pop	r28						\n\t"	\
					"pop	r29						\n\t"	\
					"pop	r30						\n\t"	\
					"pop	r31						\n\t"	\
					"out	__SREG__, r31			\n\t"	\
					"pop	r31						\n\t"	\
					"reti							\n\t"	\
				);

#endif
