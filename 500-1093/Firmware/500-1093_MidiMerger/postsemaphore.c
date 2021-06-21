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

int PostSemaphore(ECB *e, int Value)	//signal semaphore availiable
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
			if(e->task_h)				//is there really a task waiting?
			{
				t = e->task_h;		//get first task in
				e->task_h = t->next;       //remove from list
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

/***************************************************************************
** PostSemaphoreWithData (Unlock)
**
**		This version of PostSemaphore has the
**		extra feature of saving a piece of data
**		into the task control block of the
**		receiving task.
**		This function is used to incrment the value of a semaphore
**		1. Check value of event flag
**		2. Increment event flag
**		3. If value is greater than or equal to 0, return
**		4. Else remove task in pending list and put it into the active task queue
**		5. return
**
** parameters:
**	e.................pointer to event control block for semaphore
**	Value.............Value to return to pending task (should be positive)
**	data..............Data to be save in tasks TCB
**
** return value: 0 = No Error, negative indicates error
***************************************************************************/

int PostSemaphoreWithData(ECB *e, int Value,unsigned data)	//signal semaphore available
{
	TCB *t;
	int sr;

	sr = Disable();
	if(e->EventCount < 32766)	//is it going to overflow??
	{
		if(e->EventCount++ >= 0)	//increment semaphore
		{
			Enable(sr);
		}
		else
		{
			if(e->task_h)				//is there really a task waiting?
			{
				t = e->task_h;		//get first task in
				e->task_h = t->next;       //remove from list
				t->next = (TCB *)0;
				t->status = Value;			//return this value
				t->misc = data;				//and add this value in as well
				Insert(&ActiveTasks,t);	//put task back onto active list
				Enable(sr);
				Yield();
			}
			else
			{
				Enable(sr);
			}
		}
		return EVENT_NOERROR;
	}
	else
	{
		Enable(sr);
		return(EVENT_OVERFLOW);
	}
}
