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


//----------------------------------------------------------------------------
//		StartOS
// Start the operating system
//----------------------------------------------------------------------------
void StartOS(void) __attribute__ ( ( naked ) );
void StartOS(void)
{
	//---------------------------------------
	// This is where we get the ball rolling
	// Remove task from priorty queue
	// Restore its context
	// and then jump to the first task using
	// return from subroutine
	//---------------------------------------
	Delete(&ActiveTasks,(void **)&NextTask);
	CurrentTask = NextTask;
	RESTORE_CONTEXT();
}
