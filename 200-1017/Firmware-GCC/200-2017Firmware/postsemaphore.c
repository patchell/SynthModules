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

#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "task.h"
#include "pq.h"
#include "HeapManager.h"
#include "semaphore.h"


/***************************************************************************
** PostSemaphore (Unlock)
**
**		This function is used to incrment the value of a sempaphore
**		1. Check value of event flag
**		2. Increment event flag
**		3. If value is greater than or equal to 0, return
**		4. Else remove task in pending list and put it into the active task queue
**		5. return
**
** parameters:
**	e.................pointer to event control block for semaphore
**	Value.............Value to return to pending task (should be positive)
**
** return value: 0 = No Error, negative indicates error
***************************************************************************/

int PostSemaphore(SEMAPHORE *e, int Value)	//signal semaphore availiable
{
	TCB *t;
	char sr=0;
	//------------------------------
	// do not disable IRQ if inside
	// of an interrupt routine
	//------------------------------
	if(!InterruptCount)sr = Disable();
	if(e->EventCount < 32766)	//is it going to overflow??
	{
		if(e->EventCount >= 0)	//increment semaphore
		{
			++e->EventCount;
			if(!InterruptCount)Enable(sr);
		}
		else
		{
			++e->EventCount;
			if(e->task_head)				//is there really a task waiting?
			{
				t = e->task_head;		//get first task in
				e->task_head = t->next;       //remove from list
				t->next = (TCB *)0;
				t->status = Value;			//return this value
				Insert(&ActiveTasks,t);	//put task back onto active list
				if(!InterruptCount)Enable(sr);
				Yield();
			}
			else
			{
				if(!InterruptCount)Enable(sr);
			}
		}
		return EVENT_NOERROR;
	}
	else
	{
		if(!InterruptCount)Enable(sr);
		return(EVENT_OVERFLOW);
	}
}
