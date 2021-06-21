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

/*********************************************************************
**	Yield
** This function is used to yield control of the processor to another
** task, but only if we are at the task level.  We cannot yield if we
** are in an interrupt
** routine
*********************************************************************/

void Yield(void)
{
	char sr;

	// Do not yield if at the interrupt level
	if(!InterruptCount)
	{
		sr = Disable();
		//update the time stamp in current task
		pCurrentTask->TimeStamp = TStamp;
		//Insert current task back into queue
		//and get a new task
		Replace(&ActiveTasks,(void **)&pNextTask,(void *)pCurrentTask);
		//increment task swaps
		pNextTask->TcbSwaps++;
		//swap tasks
		DoSwap();
		Enable(sr);
	}
}
