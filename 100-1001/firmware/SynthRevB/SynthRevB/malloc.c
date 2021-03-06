/* Copyright (c) 2002, 2004 Joerg Wunsch
   All rights reserved.

   This code has been modified by James Patchell
   so that it works safely with his multitasking
   operating system.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

   * Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in
     the documentation and/or other materials provided with the
     distribution.

   * Neither the name of the copyright holders nor the names of
     contributors may be used to endorse or promote products derived
     from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE.
*/
 
 
/* $Id: malloc.c,v 1.11 2005/08/17 14:00:56 joerg_wunsch Exp $ */

#include <stdlib.h>

//#include "stdlib_private.h"


#ifdef MALLOC_TEST
char mymem[256];
#else
#include <avr/io.h>
#endif /* MALLOC_TEST */

#include "task.h"
#include "HeapManager.h"
#include "semaphore.h"

/*
 * Exported interface:
 *
 * When extending the data segment, the allocator will not try to go
 * beyond the current stack limit, decreased by __malloc_margin bytes.
 * Thus, all possible stack frames of interrupt routines that could
 * interrupt the current function, plus all further nested function
 * calls must not require more stack space, or they'll risk to collide
 * with the data segment.
 */
 
/* May be changed by the user only before the first malloc() call.  */

size_t __malloc_margin = 32;
char *__malloc_heap_start = (char *)0x260;
char *__malloc_heap_end = (char *)0x7fff;

char *__brkval;
struct __freelist *__flp = 0;
SEMAPHORE MallocBlocker;	//allows only one task access at a time

/*******************************************
	malloc
		Allocate a block of memory from
		the heap.  This version of malloc
		is thread safe
	parameters:
		len......size of memory block to allocate
	return value:
		pointer to memory block on success,
		OR NULL on fail
*******************************************/

void *malloc(size_t len)
{
	struct __freelist *fp1, *fp2;
	char *cp;
	size_t s, avail;

	/*
	 * Our minimum chunk size is the size of a pointer (plus the
	 * size of the "sz" field, but we don't need to account for
	 * this), otherwise we could not possibly fit a freelist entry
	 * into the chunk later.
	 */
	PendSemaphore(&MallocBlocker,0);
	if (len < sizeof(struct __freelist) - sizeof(size_t))
		len = sizeof(struct __freelist) - sizeof(size_t);

	/*
	 * First, walk the free list and try finding a chunk that
	 * would match exactly.  If we found one, we are done.  While
	 * walking, note down the size of the largest chunk we found
	 * that would still fit the request -- we need it for step 2.
	 *
	 */
	for (s = 0, fp1 = __flp, fp2 = 0;
	     fp1;
	     fp2 = fp1, fp1 = fp1->nx) {
		if (fp1->sz == len) {
			/*
			 * Found it.  Disconnect the chunk from the
			 * freelist, and return it.
			 */
			if (fp2)
				fp2->nx = fp1->nx;
			else
				__flp = fp1->nx;
			PostSemaphore(&MallocBlocker,0);
			return &(fp1->nx);
		}
		if (fp1->sz > len) {
			if (s == 0 || fp1->sz < s)
				s = fp1->sz;
		}
	}
	/*
	 * Step 2: If we found a chunk on the freelist that would fit
	 * (but was too large), look it up again and use it, since it
	 * is our closest match now.  Since the freelist entry needs
	 * to be split into two entries then, watch out that the
	 * difference between the requested size and the size of the
	 * chunk found is large enough for another freelist entry; if
	 * not, just enlarge the request size to what we have found,
	 * and use the entire chunk.
	 */
	if (s) {
		if (s - len < sizeof(struct __freelist))
			len = s;
		for (fp1 = __flp, fp2 = 0;
		     fp1;
		     fp2 = fp1, fp1 = fp1->nx) {
			if (fp1->sz == s) {
				if (len == s) {
					/*
					 * Use entire chunk; same as
					 * above.
					 */
					if (fp2)
						fp2->nx = fp1->nx;
					else
						__flp = fp1->nx;
					PostSemaphore(&MallocBlocker,0);
					return &(fp1->nx);
				}
				/*
				 * Split them up.  Note that we leave
				 * the first part as the new (smaller)
				 * freelist entry, and return the
				 * upper portion to the caller.  This
				 * saves us the work to fix up the
				 * freelist chain; we just need to
				 * fixup the size of the current
				 * entry, and note down the size of
				 * the new chunk before returning it
				 * to the caller.
				 */
				cp = (char *)fp1;
				s -= len;
				cp += s;
				fp2 = (struct __freelist *)cp;
				fp2->sz = len;
				fp1->sz = s - sizeof(size_t);
				PostSemaphore(&MallocBlocker,0);
				return &(fp2->nx);
			}
		}
	}
	/*
	 * Step 3: If the request could not be satisfied from a
	 * freelist entry, just prepare a new chunk.  This means we
	 * need to obtain more memory first.  The largest address just
	 * not allocated so far is remembered in the brkval variable.
	 * Under Unix, the "break value" was the end of the data
	 * segment as dynamically requested from the operating system.
	 * Since we don't have an operating system, just make sure
	 * that we don't collide with the stack.
	 */
	if (__brkval == 0)
		__brkval = __malloc_heap_start;
	cp = __malloc_heap_end;
	if (cp == 0)
		cp = STACK_POINTER() - __malloc_margin;
	avail = cp - __brkval;
	/*
	 * Both tests below are needed to catch the case len >= 0xfffe.
	 */
	if (avail >= len && avail >= len + sizeof(size_t)) {
		fp1 = (struct __freelist *)__brkval;
		__brkval += len + sizeof(size_t);
		fp1->sz = len;
		PostSemaphore(&MallocBlocker,0);
		return &(fp1->nx);
	}
	/*
	 * Step 4: There's no help, just fail. :-/
	 */
	 PostSemaphore(&MallocBlocker,0);
	return 0;
}

/**************************************************
	free
		This routine returns a block of memory
		to the free list so that it will be 
		available for future allocations.  It
		should be noted that this version of
		free is thread safe.
	parameters:
		p.....pointer to memory block to free
**************************************************/
void free(void *p)
{
	struct __freelist *fp1, *fp2, *fpnew;
	char *cp1, *cp2, *cpnew;

	/* ISO C says free(NULL) must be a no-op */
	if (p == 0)
		return;

	PendSemaphore(&MallocBlocker,0);
	cpnew = p;
	cpnew -= sizeof(size_t);
	fpnew = (struct __freelist *)cpnew;
	fpnew->nx = 0;

	/*
	 * Trivial case first: if there's no freelist yet, our entry
	 * will be the only one on it.
	 */
	if (__flp == 0) {
		__flp = fpnew;
		PostSemaphore(&MallocBlocker,0);
		return;
	}

	/*
	 * Now, find the position where our new entry belongs onto the
	 * freelist.  Try to aggregate the chunk with adjacent chunks
	 * if possible.
	 */
	for (fp1 = __flp, fp2 = 0;
	     fp1;
	     fp2 = fp1, fp1 = fp1->nx) {
		if (fp1 < fpnew)
			continue;
		cp1 = (char *)fp1;
		fpnew->nx = fp1;
		if ((char *)&(fpnew->nx) + fpnew->sz == cp1) {
			/* upper chunk adjacent, assimilate it */
			fpnew->sz += fp1->sz + sizeof(size_t);
			fpnew->nx = fp1->nx;
		}
		if (fp2 == 0) {
			/* new head of freelist */
			__flp = fpnew;
			PostSemaphore(&MallocBlocker,0);
			return;
		}
		break;
	}
	/*
	 * Note that we get here either if we hit the "break" above,
	 * or if we fell off the end of the loop.  The latter means
	 * we've got a new topmost chunk.  Either way, try aggregating
	 * with the lower chunk if possible.
	 */
	fp2->nx = fpnew;
	cp2 = (char *)&(fp2->nx);
	if (cp2 + fp2->sz == cpnew) {
		/* lower junk adjacent, merge */
		fp2->sz += fpnew->sz + sizeof(size_t);
		fp2->nx = fpnew->nx;
	}
	PostSemaphore(&MallocBlocker,0);
}

//-----------------------------------------------------------------------
// The following code was added by Jim Patchell on April 2, 2008
//-----------------------------------------------------------------------
//--------------------------------------------------------------------
//	OS_InitMalloc
// Initialize semaphore used to block access to malloc and free
// parameters:
//	start.........start of heap
//	end...........end of heap
//
// If start == 0, use default value
// If end == 0, use default value
//--------------------------------------------------------------------

void OS_InitMalloc(char *start, char *end)
{
	CreateSemaphore(&MallocBlocker,1,SEMAPHORE_MODE_BLOCKING);
	if(start) __malloc_heap_start = start;
	if(end) __malloc_heap_end = end;
}
