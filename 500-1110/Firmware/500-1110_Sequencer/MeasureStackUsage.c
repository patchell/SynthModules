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

/*************************************************
	MeasureStackUsage
		Measure how much of the stack is unused.
	parameters:
		s........pointer to the top of the stack
		max......maximum size of the stack
	return value:
		returns how many unused bytes are
		in the stack.

	This function just looks to see how many
	bytes are still equal to 0xcd
*************************************************/
unsigned MeasureStackUsage(char *s,unsigned max)
{
	unsigned unused=0;
	int loop = 1;

	for(unused=0;(unused < max) && loop;++unused)
		if((unsigned char)s[unused] != (unsigned char)0xcd) loop = 0;
	return unused;
}
