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
#include "semaphore.h"

//--------------------------------------------------------------------------
//	TimeDelay
// Delay task for a time
//	parameters:
//	mSec.............number of milliseconds to delay for
//
// return value:
//	returns non zero value if something happened out of the ordinary
//--------------------------------------------------------------------------

int TimeDelay(int mSec)
{
	int retval;
	SEMAPHORE *e;					//pointer to event control block for semaphore

	e = NewSemaphore(0,SEMAPHORE_MODE_TIMEOUT);	//create semaphore
	retval = PendSemaphore(e,mSec);	//pend for time delay period
	DeleteSemaphore(e);				//return semaphore back to pool
	return retval;					//exit
}
