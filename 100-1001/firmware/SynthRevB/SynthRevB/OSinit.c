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

//----------------------------------------------------------------------
//	PriorityCompare
//
// This function is used to compare two items in the priority queue
// to see which one has the highest priority
//
// The function is passed two pointers that point to the pointers
// that point to the actual objects
//
//	parameters:
//		s1......pointer to first TCB
//		s2......pointer to second TCB
//
//	return value:
//		0...........priorities are the same
//		positive....priority of s1 > s2
//		negative....priority of s1 < s2
//----------------------------------------------------------------------
//
static int PriorityCompare(void **s1, void **s2)
{
	int r;

	//check priority levels
	if( (r = ((TCB *)*s1)->priority - ((TCB *)*s2)->priority) != 0)
		return r;
	//if priority levels are the same, then check time stamps
	return (int)(((TCB *)*s2)->TimeStamp - ((TCB *)*s1)->TimeStamp);
}

//--------------------------------------------------------------------------
// Initialize system
//--------------------------------------------------------------------------
//	OSInit
//		Initialize OS services, such as the 
//		priority queue
//	parameters:
//		none
//---------------------------------------------------------------------------
void OSInit(void)
{
	CreatePriorityQueue(&ActiveTasks,32,PriorityCompare);
}

