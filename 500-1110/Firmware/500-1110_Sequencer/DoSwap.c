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

#include <avr/io.h>
#include "task.h"

/*******************************************
	DoSwap
		This function does a context swap
*******************************************/
void DoSwap(void) __attribute__ ( ( naked ) );
void DoSwap(void)
{
	SAVE_CONTEXT();		//save the context of the current task
	pCurrentTask = pNextTask;	//set current task to next task
	RESTORE_CONTEXT();		//restore context of new task
}

