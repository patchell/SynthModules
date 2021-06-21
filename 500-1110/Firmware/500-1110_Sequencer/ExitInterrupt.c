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

volatile int InterruptCount;	//How many levels
								//we are nested
								//in interrupts

/************************************************************************
**                                                                     **
** ExitInterrupt                                                       **
**                                                                     **
** This function keeps track of the nesting level of interrupts        **
** If nesting level is == 0, then do a context swap to the highest     **
** priority task                                                       **
**                                                                     **
** WARNING!                                                            **
** 	Don't mess with this function, you will be sorry                   **
**  Adding any local variables or passed parameters                    **
**  Messes with the stack.                                                       **
**                                                                     **
**				                                                       **
************************************************************************/

void ExitInterrupt(void)
{
	//decrement Interrupt level
	--InterruptCount;
	//don't swap if nested or
	//if multitasking is blocked
	if(!InterruptCount)	
	{
		//Update the time stamp in the current task
		pCurrentTask->TimeStamp = TStamp;
		//get the next task and put the current
		//task back into the priority queue
		Replace(&ActiveTasks,(void **)&pNextTask,pCurrentTask);
		//check to see if we got the same task back
		if(pNextTask != pCurrentTask)
		{
			//increment the swap counter
			pNextTask->TcbSwaps++;
			//-----------------------------
			// next, we need to adjust
			// the size of the stack
			// ignore return address on
			// stack to 
			// Exit Interrupt
			//-----------------------------
			asm volatile (
			"in r25,__SP_H__		\n\t"			//get the stack pointer
			"in r24,__SP_L__		\n\t"
			"adiw r24,2				\n\t"			//add 2 (remove irrelevant calls)
			"lds	r26, pCurrentTask		\n\t"	//get address of current task
			"lds	r27, pCurrentTask + 1	\n\t"
			"st		x+, r24					\n\t"	//save stack pointer in TCB
			"st		x+, r25					\n\t"
			);
			pCurrentTask = pNextTask;	//update current task
			RESTORE_CONTEXT();		//restore next task context
		}
	}
}

void EnterInterrupt(void)
{
	//Increment interrupt level
	++InterruptCount;
}