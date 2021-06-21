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


volatile int TStamp;	//Keeps track of
						//elapsed time
extern PQ ActiveTasks;
extern ECB *TimeoutList;


/***********************************************************************
** TimerTicker                                                        **
**                                                                    **
**	This function is called by the real time interrupt handler        **
**	This function Increments the clock, scans through the Event       **
**  Control Blocks looking for timed out events.                      **
**                                                                    **
***********************************************************************/

void TimerTicker(void)
{
	//we need to process the list of tasks waiting
	//for queues
	ECB *e;
	TCB *t,**prev;

	//------------------------------
	// Increment the time stamp
	//------------------------------
	++TStamp;
	//----------------------------------
	// Go through the semaphores that
	// have a timeout associated with
	// them.  If the timeout value has
	// gone to zero, put the tasks that
	// are waiting on those semaphores
	// back into the queue so that they
	// can execute.
	//-----------------------------------
	for(e = TimeoutList;e;e=e->Tnext)	//go through whole list
	{
		for(prev = &(e->task_h),t = e->task_h;t;)
		{
			if(t->timeout > 0)	//if less than zero, infinite timeout
			{
				if( --(t->timeout) <= 0)	//decrement timeout counter
				{
					e->EventCount++;		//fake a post
					t->status = EVENT_TIMEOUT;	//event caused by semaphore
					*prev = t->next;	//remove t from list
					t->next = 0;
					Insert(&ActiveTasks,t);//put it back in queue
				}
			}
			prev = &(t->next);
			t = t->next;
		}
	}
}
