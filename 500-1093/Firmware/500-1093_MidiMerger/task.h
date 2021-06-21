#ifndef TASK__H
#define TASK__H

#include "pq.h"

#define LO(x)		(x & 0x0ff)
#define HI(x)		((x >> 8) & 0x0ff)
#define BIT(x)		(1 << x)

#define STACK_SIZE			96		//number of 32 bit words in stack

#define EVENT_NOERROR		0
#define	EVENT_NOTASKS		-1
#define EVENT_OVERFLOW		-2
#define EVENT_TIMEOUT		-3
#define EVENT_DELETED		-4


/*------------------------------------------------------------------
** Definition of a Task Control Block (TCB)
**----------------------------------------------------------------*/

typedef struct tcb {
	char *stack;			/*	points to current position in stack	*/
	char *stacktop;		/*	points to the end of the stack		*/
	int stacksize;		/*	SIZE of the stack in words			*/
	int priority;		/*	task priority	*/
	int status;			/*	task status, set by semaphore mostly	*/
	unsigned misc;		/*	user defined data	*/
	unsigned TimeStamp;		/*	system time stamp, set when swapped	*/
	unsigned TcbSwaps;		/*	number of times tasks swapped in	*/
	int timeout;        /*	timeout counter to trigger event	*/
	char *name;			/*	name of task	*/
	struct tcb *next;	/* pointer to next TCB	*/
	struct tcb *list;	/*	master linked list of tasks	*/
} TCB;

/*-------------------------------------------------------------------
** Semaphore Object
**-----------------------------------------------------------------*/
typedef struct ecb {
	TCB *task_h;		//head pointer for list of waiting tasks
	TCB *task_t;		//tail pointer for list of waiting tasks
	struct ecb *Tnext,*Tprev;	//Link list pointers for timeout list
	int SemaphoreMode;		//mode of semaphore
	int EventCount;			//counter for semaphore
	char name[20];
} ECB;

#define SEMAPHORE_MODE_BLOCKING		0
#define SEMAPHORE_MODE_TIMEOUT		1

/*-------------------------------------------------------------------
** Function Prototypes
**------------------------------------------------------------------*/

extern ECB *MasterList;	//head pointer for master semaphore list
extern ECB *TimeoutList;	//head pointer for timeout semaphore list
extern PQ ActiveTasks;		//priority task queue
extern TCB *CurrentTask,*NextTask;
extern ECB *LCDBlocker;
extern int OsRunning;
extern volatile int TStamp;

extern volatile int InterruptCount;
extern volatile int Blocking;

extern void CreateTask(TCB *t, void (*task)(void *), int stacksize,int priority,char *name,void *arg);
extern void OSInit(void);
extern void Yield(void);
extern ECB *NewSemaphore(int InitCount,int Mode,char *name);
extern void CreateSemaphore(ECB *e,int InitCount,int Mode,char *n);
extern void DeleteSemaphore(ECB *e);
extern int PendSemaphore(ECB *e, int Timeout);	//wait for semaphore availiable
extern int PostSemaphore(ECB *e, int Value);	//signal semaphore availiable
extern int PostSemaphoreWithData(ECB *e, int Value,unsigned data);	//signal semaphore availiable
extern void TimerTicker(void);
extern void vPortYieldProcessor(void);
extern void vPortStartFirstTask(void);
extern int TimeDelay(int mSec);
extern void Enable(char sr);
extern char Disable(void);
extern void StartOS(void);
extern void DoSwap(void);
extern void EnterInterrupt(void);
extern void ExitInterrupt(void);
extern unsigned MeasureStackUsage(char *s,unsigned max);
extern unsigned StackHeapAvailiable(void);
extern void RegisterTickerPost(ECB *pS);
extern unsigned int FreeMallocSpace(void);
extern void OS_InitMalloc(char *s, char *e);

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
	asm volatile (	"push	r31						\n\t"	/* Push R31	*/	\
					"in		r31, __SREG__			\n\t"	/* Load Status Reg	*/ \
					"ori	r31,0x80				\n\t"	/* Set IRQen Bit	*/ \
					"push	r31						\n\t"	/* Push Modified Status Reg	*/ \
					"push	r30						\n\t"	/* Push R30	*/ \
					"push	r29						\n\t"	/* Push R29	*/ \
					"push	r28						\n\t"	/* Push R28	*/ \
					"push	r27						\n\t"	/* Push R27	*/ \
					"push	r26						\n\t"	/* Push R26	*/ \
					"push	r25						\n\t"	/* Push R25	*/ \
					"push	r24						\n\t"	/* Push R24	*/ \
					"push	r23						\n\t"	/* Push R23	*/ \
					"push	r22						\n\t"	/* Push R22	*/ \
					"push	r21						\n\t"	/* Push R21	*/ \
					"push	r20						\n\t"	/* Push R20	*/ \
					"push	r19						\n\t"	/* Push R19	*/ \
					"push	r18						\n\t"	/* Push R18	*/ \
					"push	r17						\n\t"	/* Push R17	*/ \
					"push	r16						\n\t"	/* Push R16	*/ \
					"push	r15						\n\t"	/* Push R15	*/ \
					"push	r14						\n\t"	/* Push R14	*/ \
					"push	r13						\n\t"	/* Push R13	*/ \
					"push	r12						\n\t"	/* Push R12	*/ \
					"push	r11						\n\t"	/* Push R11	*/ \
					"push	r10						\n\t"	/* Push R10	*/ \
					"push	r9						\n\t"	/* Push R9	*/ \
					"push	r8						\n\t"	/* Push R8	*/ \
					"push	r7						\n\t"	/* Push R7	*/ \
					"push	r6						\n\t"	/* Push R6	*/ \
					"push	r5						\n\t"	/* Push R5	*/ \
					"push	r4						\n\t"	/* Push R4	*/ \
					"push	r3						\n\t"	/* Push R3	*/ \
					"push	r2						\n\t"	/* Push R2	*/ \
					"push	r1						\n\t"	/* Push R1	*/ \
					"clr	r1						\n\t"	/* Set R1 to Zero	*/ \
					"push	r0						\n\t"	/* Push R0	*/ \
				);

#define RESTORE_IRQ()								\
	asm volatile (	"pop	r0						\n\t"	/* Pop R0	*/	\
					"pop	r1						\n\t"	/* Pop R1	*/	\
					"pop	r2						\n\t"	/* Pop R2	*/	\
					"pop	r3						\n\t"	/* Pop R3	*/	\
					"pop	r4						\n\t"	/* Pop R4	*/	\
					"pop	r5						\n\t"	/* Pop R5	*/	\
					"pop	r6						\n\t"	/* Pop R6	*/	\
					"pop	r7						\n\t"	/* Pop R7	*/	\
					"pop	r8						\n\t"	/* Pop R8	*/	\
					"pop	r9						\n\t"	/* Pop R9	*/	\
					"pop	r10						\n\t"	/* Pop R10	*/	\
					"pop	r11						\n\t"	/* Pop R11	*/	\
					"pop	r12						\n\t"	/* Pop R12	*/	\
					"pop	r13						\n\t"	/* Pop R13	*/	\
					"pop	r14						\n\t"	/* Pop R14	*/	\
					"pop	r15						\n\t"	/* Pop R15	*/	\
					"pop	r16						\n\t"	/* Pop R16	*/	\
					"pop	r17						\n\t"	/* Pop R17	*/	\
					"pop	r18						\n\t"	/* Pop R18	*/	\
					"pop	r19						\n\t"	/* Pop R19	*/	\
					"pop	r20						\n\t"	/* Pop R20	*/	\
					"pop	r21						\n\t"	/* Pop R21	*/	\
					"pop	r22						\n\t"	/* Pop R22	*/	\
					"pop	r23						\n\t"	/* Pop R23	*/	\
					"pop	r24						\n\t"	/* Pop R24	*/	\
					"pop	r25						\n\t"	/* Pop R25	*/	\
					"pop	r26						\n\t"	/* Pop R26	*/	\
					"pop	r27						\n\t"	/* Pop R27	*/	\
					"pop	r28						\n\t"	/* Pop R28	*/	\
					"pop	r29						\n\t"	/* Pop R29	*/	\
					"pop	r30						\n\t"	/* Pop R30	*/	\
					"pop	r31						\n\t"	/* Pop Status Register	*/	\
					"cbr	r31,0x80				\n\t"	/* Clear IRQ en bit	*/	\
					"out	__SREG__, r31			\n\t"	/* Restore Status Register	*/	\
					"pop	r31						\n\t"	/* Pop R31	*/	\
					"reti							\n\t"	/* Return (enable IRQen)	*/	\
				);
//-------------------------------------------------------------------
// macros used for saving and restoring context from a task level
//-------------------------------------------------------------------

#define SAVE_CONTEXT()									\
	asm volatile (	"push	r31						\n\t"	/* Push R31	*/	\
					"in		r31, __SREG__			\n\t"	/* Get Status Register	*/	\
					"cli							\n\t"	/* disable Interrupts	*/	\
					"push	r31						\n\t"	/*	Push Status Register	*/	\
					"push	r30						\n\t"	/* Push R30	*/	\
					"push	r29						\n\t"	/* Push R29	*/	\
					"push	r28						\n\t"	/* Push R28	*/	\
					"push	r27						\n\t"	/* Push R27	*/	\
					"push	r26						\n\t"	/* Push R26	*/	\
					"push	r25						\n\t"	/* Push R25	*/	\
					"push	r24						\n\t"	/* Push R24	*/	\
					"push	r23						\n\t"	/* Push R23	*/	\
					"push	r22						\n\t"	/* Push R22	*/	\
					"push	r21						\n\t"	/* Push R21	*/	\
					"push	r20						\n\t"	/* Push R20	*/	\
					"push	r19						\n\t"	/* Push R19	*/	\
					"push	r18						\n\t"	/* Push R18	*/	\
					"push	r17						\n\t"	/* Push R17	*/	\
					"push	r16						\n\t"	/* Push R16	*/	\
					"push	r15						\n\t"	/* Push R15	*/	\
					"push	r14						\n\t"	/* Push R14	*/	\
					"push	r13						\n\t"	/* Push R13	*/	\
					"push	r12						\n\t"	/* Push R12	*/	\
					"push	r11						\n\t"	/* Push R11	*/	\
					"push	r10						\n\t"	/* Push R10	*/	\
					"push	r9						\n\t"	/* Push R9	*/	\
					"push	r8						\n\t"	/* Push R8	*/	\
					"push	r7						\n\t"	/* Push R7	*/	\
					"push	r6						\n\t"	/* Push R6	*/	\
					"push	r5						\n\t"	/* Push R5	*/	\
					"push	r4						\n\t"	/* Push R4	*/	\
					"push	r3						\n\t"	/* Push R3	*/	\
					"push	r2						\n\t"	/* Push R2	*/	\
					"push	r1						\n\t"	/* Push R1	*/	\
					"clr	r1						\n\t"	/* Set R1 to Zero	*/	\
					"push	r0						\n\t"	/* Push R0	*/	\
					"lds	r26, CurrentTask		\n\t"	/* Load pointer to Current TCB	*/	\
					"lds	r27, CurrentTask + 1	\n\t"	/* Into Index Register X	*/	\
					"in		r0, __SP_L__			\n\t"	/* Get Low Part of Stack Pointer	*/	\
					"st		x+, r0					\n\t"	/* Save into Task Control Block	*/	\
					"in		r0, __SP_H__			\n\t"	/* Get High Part of Stack Pointer	*/	\
					"st		x+, r0					\n\t"	/* Save into Task Control Block	*/	\
				);

/* 
 * Opposite to SAVE_CONTEXT().  Interrupts will have been disabled during
 * the context save so we can write to the stack pointer. 
 */

#define RESTORE_CONTEXT()								\
	asm volatile (	"lds	r26, NextTask		\n\t"	/* Get Address of Next Task TCB*/ \
		"lds	r27, NextTask + 1	\n\t"	\
		"ld		r28, x+					\n\t"	/* load pointer to Stack Pointer */\
		"out	__SP_L__, r28			\n\t"	/* load Stack pointer for restored Task */\
		"ld		r29, x+					\n\t"	\
		"out	__SP_H__, r29			\n\t"	\
		"pop	r0						\n\t"	/* Pop R0 from Stack */ \
		"pop	r1						\n\t"	/* Pop R1 from Stack */ \
		"pop	r2						\n\t"	/* Pop R2 from Stack */ \
		"pop	r3						\n\t"	/* Pop R3 from Stack */ \
		"pop	r4						\n\t"	/* Pop R4 from Stack */ \
		"pop	r5						\n\t"	/* Pop R5 from Stack */ \
		"pop	r6						\n\t"	/* Pop R6 from Stack */ \
		"pop	r7						\n\t"	/* Pop R7 from Stack */ \
		"pop	r8						\n\t"	/* Pop R8 from Stack */ \
		"pop	r9						\n\t"	/* Pop R9 from Stack */ \
		"pop	r10						\n\t"	/* Pop R10 from Stack */ \
		"pop	r11						\n\t"	/* Pop R11 from Stack */ \
		"pop	r12						\n\t"	/* Pop R12 from Stack */ \
		"pop	r13						\n\t"	/* Pop R13 from Stack */ \
		"pop	r14						\n\t"	/* Pop R14 from Stack */ \
		"pop	r15						\n\t"	/* Pop R15 from Stack */ \
		"pop	r16						\n\t"	/* Pop R16 from Stack */ \
		"pop	r17						\n\t"	/* Pop R17 from Stack */ \
		"pop	r18						\n\t"	/* Pop R18 from Stack */ \
		"pop	r19						\n\t"	/* Pop R19 from Stack */ \
		"pop	r20						\n\t"	/* Pop R20 from Stack */ \
		"pop	r21						\n\t"	/* Pop R21 from Stack */ \
		"pop	r22						\n\t"	/* Pop R22 from Stack */ \
		"pop	r23						\n\t"	/* Pop R23 from Stack */ \
		"pop	r24						\n\t"	/* Pop R24 from Stack */ \
		"pop	r25						\n\t"	/* Pop R25 from Stack */ \
		"pop	r26						\n\t"	/* Pop R26 from Stack */ \
		"pop	r27						\n\t"	/* Pop R27 from Stack */ \
		"pop	r28						\n\t"	/* Pop R28 from Stack */ \
		"pop	r29						\n\t"	/* Pop R29 from Stack */ \
		"pop	r30						\n\t"	/* Pop R30 from Stack */ \
		"pop	r31						\n\t"	/* Pop Status from Stack */ \
		"sbrc	r31,7					\n\t"	/* Check IRQ en bit */ \
		"rjmp	irqen					\n\t"	/* Is Irq Enabled? */ \
		"out	__SREG__, r31			\n\t"	/* No, update Status Reg */ \
		"pop	r31						\n\t"	/* Pop R31 from Stack */ \
		"ret							\n\t"	/* Do normal return */ \
		"irqen: cbr 	r31, 128		\n\t"	/* YES, clear IRQ En Bit */ \
		"out	__SREG__, r31			\n\t"	/* Update Status Reg */ \
		"pop	r31						\n\t"	/* Pop R31 from Stack */ \
		"reti							\n\t"	/* return from IRQ (enable IRQ on Return */ \
);

/*
**
*/

#endif
