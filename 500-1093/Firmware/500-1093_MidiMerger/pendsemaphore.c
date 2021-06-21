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
#include <stdio.h>
#include "task.h"
#include "pq.h"

/**************************************************************************
** PendSemaphore (Lock)
**		This function checks the value of the semaphore.
**		1. Check Value EventCount
**		2. Decrement the value of the EventCount
**		3. If Value in Step 1 was greater than 0, then return
**		4. If Value in Step 1 was less than or equal to 0 THEN
**		5. Add task to list of pending tasks
**      6. Do a Context Switch
**
** parameters:
**	e.............pointer to event control block for semaphore
**	Timeout.......Number of system timer ticks to wait for semaphore to post
**
** return value:
**	Inidicates status of operation.  0 or positive is normal,
**		negative is error
**************************************************************************/

int PendSemaphore(ECB *e, int Timeout)	//wait for semaphore availiable
{
	char sr;
	int retval;
	sr = Disable();
	if(e->EventCount > 0)	/*	is resource availiable?	*/
	{
		/*	yes	*/
		--e->EventCount;
		Enable(sr);
		retval = EVENT_NOERROR;	//everything is peachy
	}
	else
	{
		/*	no	*/
		--e->EventCount;
		if(!e->task_h)		//make linked list of waiting tasks
			e->task_h = CurrentTask;
		else
			e->task_t->next = CurrentTask;
		e->task_t = CurrentTask;
		CurrentTask->status = EVENT_NOERROR;
		if(e->SemaphoreMode)
			CurrentTask->timeout = Timeout;

		//swap out current task
		//Update the time stamp on current task
		CurrentTask->TimeStamp = TStamp;
		//get highest priority task from queue
		if(Delete(&ActiveTasks,(void **)&NextTask))	
		{
			//increment swaps on new task
			NextTask->TcbSwaps++;
			DoSwap();		//do context swap
		}
		else
		{
			//there were no tasks in the queue
			//set status to error and return
			CurrentTask->status = EVENT_NOTASKS;
		}
		//-----------------------
		// Pend is over, check status
		//-----------------------

		Enable(sr);
		retval = CurrentTask->status;	//return this value
	}
	return retval;
}
