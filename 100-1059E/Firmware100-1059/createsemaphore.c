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

SEMAPHORE *pTimeoutList;	//list of semaphores
					//that have a timeout
					//constraint on them
static SEMAPHORE *pSemaphorePool;//If a semaphore is
					//deleted, the block
					//of memory is put
					//here.  Keeps the
					//heap from getting
					//fragmented.

/*********************************************
	AllocSemaphore
		Allocate an event control Block
		Check the SEMAPHORE pool, if it is empty,
		then allocate a new SEMAPHORE from heap
	parameters:
		none
	return value:
		pointer to SEMAPHORE on success
		NULL on fail
*********************************************/
static SEMAPHORE *AllocSemaphore(void)
{
	SEMAPHORE *rv;
	// enter critical section disable IRQ
	char sr = Disable();
	if (pSemaphorePool)	//check the pool
	{
		//get first SEMAPHORE in pool
		rv = pSemaphorePool;
		//new head of pool
		pSemaphorePool = pSemaphorePool->Tnext;
		//exit critical section
		Enable(sr);
	}
	else
	{
		//exit critical section
		Enable(sr);
		//allocate SEMAPHORE from heap
		rv = (SEMAPHORE *)malloc(sizeof(SEMAPHORE));	//or allocate from the heap
	}
	return rv;
}

/***********************************************
	FreeECB
		put SEMAPHORE block into SEMAPHORE pool 
		(don't bother to return it to the heap)
	parameter:
		e...........pointer to SEMAPHORE block to free
***********************************************/
static void FreeSemaphore(SEMAPHORE *pSem)
{
	char sr;
	//enter critical section disable IRQ
	sr = Disable();
	if(pSem->SemaphoreMode)	//is it in timeout list?
	{
		//remove semaphore from timeout list
		if(pSem == pTimeoutList)
			pTimeoutList = pSem->Tnext;
		if(pSem->Tprev)
			pSem->Tprev->Tnext = pSem->Tnext;
		if(pSem->Tnext)
			pSem->Tnext->Tprev = pSem->Tprev;
	}
	//put SEMAPHORE into pool
	pSem->Tnext = pSemaphorePool;
	pSemaphorePool = pSem;
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
SEMAPHORE *NewSemaphore(int InitCount,int Mode,char *name)
{
	SEMAPHORE *pSem;

	if((pSem = AllocSemaphore()) != NULL)
		CreateSemaphore(pSem,InitCount,Mode,name);
	return pSem;
}

/***************************************************************************
**                                                                        **
** Semaphore objects
****************************************************************************
** CreateSemaphore
**		Sets up an SEMAPHORE for use as a Semaphore                                                        **
** parameters:                                                            **
**	e............pointer to an event control block to initialize          **
**	InitCount....Initial value of semaphore count                         **
**	Mode.........0 = Semaphore doesn't time out, 1 = Semaphore Times out  **
**	n............name of semaphore (DEBUG only)                           **
**                                                                        **
***************************************************************************/

void CreateSemaphore(SEMAPHORE *pSem,int InitCount,int Mode,char *n)
{
	char sr;

	pSem->EventCount = InitCount;	//set initial count
	pSem->SemaphoreMode = Mode;	//set mode
	strcpy(pSem->name,n);			//copy name in
	pSem->task_head = 0;				//no tasks waiting
	pSem->task_tail = 0;				//no tasks waiting
	//-------------------------------------------------------
	// if Mode==SEMAPHORE_MODE_TIMEOUT, then put this
	// semaphore into timeout list
	//-------------------------------------------------------
	// enter critical section, disable interrupts
	sr = Disable();
	if(pSem->SemaphoreMode == SEMAPHORE_MODE_TIMEOUT)
	{
		if(pTimeoutList)	//is the list already started?
		{
			pSem->Tnext = pTimeoutList;	//make current head next in line
			pSem->Tprev = 0;			//these is no previous entry
			pTimeoutList->Tprev = pSem;	//this will be prev for next entry
			pTimeoutList = pSem;			//this is now the new head of list
		}
		else			//no start list
		{
			pTimeoutList = pSem;	//set timeout list
			pSem->Tnext = 0;
			pSem->Tprev = 0;
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
**		e..........pointer to SEMAPHORE block that describes the semaphore
**
*******************************************************************************/

void DeleteSemaphore(SEMAPHORE *pSem)
{
	char sr;
	TCB *t;

	//are there any tasks waiting for this sucker?
	//enter critical section, disable IRQ
	sr = Disable();
	while(pSem->task_head)		//remove all tasks
	{
		t = pSem->task_head;		//get first task in
		pSem->task_head = t->next;       //remove from list
		t->next = (TCB *)0;
		t->status = EVENT_DELETED;	//return this value
		Insert(&ActiveTasks,t);	//put task back onto active list
	}
	FreeSemaphore(pSem);		//put semaphore back in pool
	Enable(sr);
}
