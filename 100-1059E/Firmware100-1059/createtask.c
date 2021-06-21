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

/*********************************************************
	AllocStack
		Allocate memory in the heap for use as a stack
	parameters:
		len......size of stack in bytes
	return value:
		pointer to block of ram to use as stack on success
		OR NULL on fail
*********************************************************/
static void *AllocStack(size_t len)
{
	return malloc(len);
}

/***************************************************************************************
** Create a task
** parameter:
**	t...............pointer to the task control block
**	task............pointer to function that will be the task
**	stacksize.......size of stack in number of longs
**	priority........task priority
**	name............tag to identify task control block for debug purposes
**	arg.............argument to be passed to function...it chan either be 
**  a value, or a pointer to some data
***************************************************************************************/

void CreateTask(TCB *t, void (*task)(void *), int stacksize,int priority,char *name,void *arg)
{
	char *stk;
	char sr;		//status register
	char *stack;	//pointer to stack
	int i;

	stack = AllocStack(stacksize);
	//set all stack locations with an
	//arbitrary value to make DEBUG
	// much easier.
	for(i=0;i<stacksize;++i) 
		stack[i] = 0xcd;
	//enter critical section, Disable IRQ
	sr = Disable();
	if(t)
	{
		//initialize TCB member variables
		t->TcbSwaps = 0;
		t->stacksize = stacksize;
		t->priority = priority;
		t->TimeStamp = 0;
		t->name = name;
		t->stacktop = stack;
		t->next = (TCB *)0;
		t->list = (TCB *)0;
		stk = stack + stacksize-1;
		//Initialize the stack
		*stk-- = (char)LO( (unsigned)task);/*	return address	*/
		*stk-- = (char)HI( (unsigned)task);
		*stk-- = 31;		/*	r31 = 0	*/
		*stk-- = 0x80;	/*	SREG Interrupts enabled	*/
		*stk-- = 30;		/*	r30 = 0	*/
		*stk-- = 29;		/*	r29 = 0	*/
		*stk-- = 28;		/*	r28 = 0	*/
		*stk-- = 27;		/*	r27 = 0	*/
		*stk-- = 26;		/*	r26 = 0	*/
		*stk-- = (char)HI( (unsigned)arg);		/*	r25 = 0	*/
		*stk-- = (char)LO( (unsigned)arg);		/*	r24 = 0	*/
		*stk-- = 23;		/*	r23 = 0	*/
		*stk-- = 22;		/*	r22 = 0	*/
		*stk-- = 21;		/*	r21 = 0	*/
		*stk-- = 20;		/*	r20 = 0	*/
		*stk-- = 19;		/*	r19 	*/
		*stk-- = 18;		/*	r18 	*/
		*stk-- = 17;		/*	r17 	*/
		*stk-- = 16;		/*	r16 	*/
		*stk-- = 15;		/*	r15 	*/
		*stk-- = 14;		/*	r14 	*/
		*stk-- = 13;		/*	r13 	*/
		*stk-- = 12;		/*	r12 	*/
		*stk-- = 11;		/*	r11 	*/
		*stk-- = 10;		/*	r10 	*/
		*stk-- = 9;			/*	r9 		*/
		*stk-- = 8;			/*	r8 		*/
		*stk-- = 7;			/*	r7 		*/
		*stk-- = 6;			/*	r6 		*/
		*stk-- = 5;			/*	r5 		*/
		*stk-- = 4;			/*	r4 		*/
		*stk-- = 3;			/*	r3 		*/
		*stk-- = 2;			/*	r2 		*/
		*stk-- = 0;			/*	r1 must be ZERO 	*/
		*stk-- = 0;			/*	r0 		*/
		t->stack = stk;
	}
	//exit critical section, enable IRQ
	Enable(sr);
}
