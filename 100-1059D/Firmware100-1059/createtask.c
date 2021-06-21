/////////////////////////////////////////////////////////////////////////////////////////////
//
// These routines mess with the stack
//
// you must use either of these optimizations:
// -O1
// -O3
// -O2
//
// Whatever you do, do NOT use -O0....it will NOT work
//
// /////////////////////////////////////////////////////////////////////////////////////////

#include "task.h"
#include "pq.h"
#include "HeapManager.h"

TCB *pCurrentTask;	//pointer to the
					//TCB of the current
					//task
TCB *pNextTask;		//pointer to the
					//TCB of the next
					//task that will be
					//running
int OsRunning;		//flag indicates OS
					//is running
PRIORITYQUEUE ActiveTasks;		//priority queue
					//of tasks waiting
					//to be run
/***************************************************************************************
** Create a task
** parameter:
**	t...............pointer to the task control block
**	task............pointer to function that will be the task
**	stacksize.......size of stack in number of longs
**	priority........task priority
**	arg.............argument to be passed to function...it chan either be 
**  a value, or a pointer to some data
***************************************************************************************/

void CreateTask(TCB *t, void (*task)(void *), int stacksize,int priority,char *name,void *arg)
{
	char *stk;
	char sr;		//status register
	char *stack;	//pointer to stack

	stack = malloc(stacksize);
	//enter critical section, Disable IRQ
	sr = Disable();
	if(t)
	{
		//initialize TCB member variables
		t->TcbSwaps = 0;
		t->stacksize = stacksize;
		t->priority = priority;
		t->TimeStamp = 0;
		t->stacktop = stack;
		t->next = (TCB *)0;
		t->list = (TCB *)0;
		stk = stack + stacksize-1;
		//Initialize the stack
		*stk-- = (char)LO( (unsigned)task);/*	return address	*/
		*stk-- = (char)HI( (unsigned)task);
		*stk-- = 0;		/*	r31 = 0	*/
		*stk-- = 0x80;	/*	SREG Interrupts enabled	*/
		*stk-- = 0;		/*	r30 = 0	*/
		*stk-- = 0;		/*	r29 = 0	*/
		*stk-- = 0;		/*	r28 = 0	*/
		*stk-- = 0;		/*	r27 = 0	*/
		*stk-- = 0;		/*	r26 = 0	*/
		*stk-- = (char)HI( (unsigned)arg);		/*	r25 = 0	*/
		*stk-- = (char)LO( (unsigned)arg);		/*	r24 = 0	*/
		*stk-- = 0;		/*	r23 = 0	*/
		*stk-- = 0;		/*	r22 = 0	*/
		*stk-- = 0;		/*	r21 = 0	*/
		*stk-- = 0;		/*	r20 = 0	*/
		*stk-- = 0;		/*	r19 	*/
		*stk-- = 0;		/*	r18 	*/
		*stk-- = 0;		/*	r17 	*/
		*stk-- = 0;		/*	r16 	*/
		*stk-- = 0;		/*	r15 	*/
		*stk-- = 0;		/*	r14 	*/
		*stk-- = 0;		/*	r13 	*/
		*stk-- = 0;		/*	r12 	*/
		*stk-- = 0;		/*	r11 	*/
		*stk-- = 0;		/*	r10 	*/
		*stk-- = 0;		/*	r9 		*/
		*stk-- = 0;		/*	r8 		*/
		*stk-- = 0;		/*	r7 		*/
		*stk-- = 0;		/*	r6 		*/
		*stk-- = 0;		/*	r5 		*/
		*stk-- = 0;		/*	r4 		*/
		*stk-- = 0;		/*	r3 		*/
		*stk-- = 0;		/*	r2 		*/
		*stk-- = 0;		/*	r1 must be ZERO 	*/
		*stk-- = 0;		/*	r0 		*/
		t->stack = stk;
	}
	//exit critical section, enable IRQ
	Enable(sr);
}

TCB *NewTask(void (*task)(void *),int stacksize,int priority,char *name,void *arg)
{
	TCB *pTCB;
	pTCB = (TCB *)malloc(sizeof(TCB));
	CreateTask(pTCB,task,stacksize,priority,name,arg);
	return pTCB;
}