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

ECB *TimeoutList;	//list of semaphores
					//that have a timeout
					//constraint on them
static ECB *ECBPool;//If a semaphore is
					//deleted, the block
					//of memory is put
					//here.  Keeps the
					//heap from getting
					//fragmented.

/*********************************************
	AllocECB
		Allocate an event control Block
		Check the ECB pool, if it is empty,
		then allocate a new ECB from heap
	parameters:
		none
	return value:
		pointer to ECB on success
		NULL on fail
*********************************************/
static ECB *AllocECB(void)
{
	ECB *rv;
	// enter critical section disable IRQ
	char sr = Disable();
	if (ECBPool)	//check the pool
	{
		//get first ECB in pool
		rv = ECBPool;
		//new head of pool
		ECBPool = ECBPool->Tnext;
		//exit critical section
		Enable(sr);
	}
	else
	{
		//exit critical section
		Enable(sr);
		//allocate ECB from heap
		rv = (ECB *)malloc(sizeof(ECB));	//or allocate from the heap
	}
	return rv;
}

/***********************************************
	FreeECB
		put ECB block into ECB pool 
		(don't bother to return it to the heap)
	parameter:
		e...........pointer to ECB block to free
***********************************************/
static void FreeECB(ECB *e)
{
	char sr;
	//enter critical section disable IRQ
	sr = Disable();
	if(e->SemaphoreMode)	//is it in timeout list?
	{
		//remove semaphore from timeout list
		if(e == TimeoutList)
			TimeoutList = e->Tnext;
		if(e->Tprev)
			e->Tprev->Tnext = e->Tnext;
		if(e->Tnext)
			e->Tnext->Tprev = e->Tprev;
	}
	//put ECB into pool
	e->Tnext = ECBPool;
	ECBPool = e;
	//Exit Critical Section, Enable IRQ
	Enable(sr);
}

/************************************************
	NewSemaphore
		Create a new semaphore
	parameters:
	InitCount...Initial count value of semaphore
	Mode........Blocking or Timeout semaphore
	name........Name of semaphore
	return value:
		pointer to an Event Control block on success
		OR NULL on fail
************************************************/
ECB *NewSemaphore(int InitCount,int Mode,char *name)
{
	ECB *r;

	if((r = AllocECB()) != NULL)
		CreateSemaphore(r,InitCount,Mode,name);
	return r;
}

/***************************************************************************
**                                                                        **
** Semaphore objects
****************************************************************************
** CreateSemaphore
**		Sets up an ECB for use as a Semaphore                                                        **
** parameters:                                                            **
**	e............pointer to an event control block to initialize          **
**	InitCount....Initial value of semaphore count                         **
**	Mode.........0 = Semaphore doesn't time out, 1 = Semaphore Times out  **
**	n............name of semaphore (DEBUG only)                           **
**                                                                        **
***************************************************************************/

void CreateSemaphore(ECB *e,int InitCount,int Mode,char *n)
{
	char sr;

	e->EventCount = InitCount;	//set initial count
	e->SemaphoreMode = Mode;	//set mode
	strcpy(e->name,n);			//copy name in
	e->task_h = 0;				//no tasks waiting
	e->task_t = 0;				//no tasks waiting
	//-------------------------------------------------------
	// if Mode==SEMAPHORE_MODE_TIMEOUT, then put this
	// semaphore into timeout list
	//-------------------------------------------------------
	// enter critical section, disable interrupts
	sr = Disable();
	if(e->SemaphoreMode == SEMAPHORE_MODE_TIMEOUT)
	{
		if(TimeoutList)	//is the list already started?
		{
			e->Tnext = TimeoutList;	//make current head next in line
			e->Tprev = 0;			//these is no previous entry
			TimeoutList->Tprev = e;	//this will be prev for next entry
			TimeoutList = e;			//this is now the new head of list
		}
		else			//no start list
		{
			TimeoutList = e;	//set timeout list
			e->Tnext = 0;
			e->Tprev = 0;
		}
	}
	//exit critical section, enable IRQ
	Enable(sr);	//restore interrupts
}

/*******************************************************************************
** Delete Semaphore
**	This function is used to free a Semaphore.  Rather than return the memory
** to the heap, it is put into a pool where it can be reused later without
** having to do another malloc.
**
**	parameters:
**		e..........pointer to ECB block that describes the semaphore
**
*******************************************************************************/

void DeleteSemaphore(ECB *e)
{
	char sr;
	TCB *t;

	//are there any tasks waiting for this sucker?
	//enter critical section, disable IRQ
	sr = Disable();
	while(e->task_h)		//remove all tasks
	{
		t = e->task_h;		//get first task in
		e->task_h = t->next;       //remove from list
		t->next = (TCB *)0;
		t->status = EVENT_DELETED;	//return this value
		Insert(&ActiveTasks,t);	//put task back onto active list
	}
	FreeECB(e);		//put semaphore back in pool
	Enable(sr);
}
