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
	static int DCount = 0;	//keeps track of the number of times its called
	SEMAPHORE *e;					//pointer to event control block for semaphore

	char *s = malloc(32);	//get a new block of memory
	s[0] = 'D';				//create name for semaphore
	itoa(DCount++,&s[1],10);
	e = NewSemaphore(0,SEMAPHORE_MODE_TIMEOUT,s);	//create semaphore
	free(s);			//return memory block
	retval = PendSemaphore(e,mSec);	//pend for time delay period
	DeleteSemaphore(e);				//return semaphore back to pool
	return retval;					//exit
}
