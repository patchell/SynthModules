//----------------------------------------------------------
//
// Priority Queue Class
//
// The elements of the Q consist of an Array of pointers
// To the various elements of the Q
// No real data actually exists in this thing.
//
// copyright (c) Jim Patchell 1995,2000
//
//----------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "task.h"
#include "pq.h"

static void swap(void **,void **);
static void ReheapUp(PRIORITYQUEUE* q);
static void ReheapDown(PRIORITYQUEUE* q);

//---------------------------------------------------------
//
// PRIORITYQUEUE constructor
//
// int ne;	//maximum number of elements in the priority queue
// int (*c)(void **,void**);	//compare function.  The compare
//								//function,when called is passed
//								//a pair of pointers to pointers
//								//to the objects to be compared
// The constructor initializes all of the other parameters from
// these.
//
//---------------------------------------------------------
//
void CreatePriorityQueue(PRIORITYQUEUE *q,int ne,int (*c)(void **,void **))
{
	q->m_Cmp = c;
	q->m_nItems = 0;
	q->m_Maxitems = ne;
	q->m_ppHeap = (void **)malloc(sizeof(void *) * ne);
    q->m_ppBottom = &q->m_ppHeap[-1];
}


//---------------------------------------------------------
//
// Insert
//
// This function puts a new object pointer into the m_ppHeap
// if space is available.  It then reheaps
//
// Interrupts should be disabled before 
// calling this function
//
// parameters:
//	pQ......pointer to the priority queue
//	item....pointer to item to add to queue
//
// return value:
//		space available in queue
//
//---------------------------------------------------------
//
int Insert(PRIORITYQUEUE* pQ,void *item)
{
	int space_avail;

	space_avail = pQ->m_Maxitems - pQ->m_nItems;
	if((space_avail) > 0)
	{
		++pQ->m_nItems;
		*(++pQ->m_ppBottom) = item;
		ReheapUp(pQ);
	}
	return space_avail;
}

//---------------------------------------------------------
//
// Delete
//
// This function deletes the highest priority item from
// the m_ppHeap.  It stores the pointer to the object in the
// location pointed to by target.  It then reheaps
//
// Interrupts should be disabled before 
// calling this function
//
// parameters:
//	pQ......pointer to the priority queue
//	target..pointer to place to store pointer to item
//
// return value:
//		returns slots in use in the queue
//---------------------------------------------------------

int Delete(PRIORITYQUEUE* pQ,void **target)
{
	int SlotsInUse;

	if((SlotsInUse = pQ->m_nItems) > 0)
	{
		*target = *pQ->m_ppHeap;		//get item from top of m_ppHeap
		*pQ->m_ppHeap = *pQ->m_ppBottom--;
		--pQ->m_nItems;
		ReheapDown(pQ);
	}
	return SlotsInUse;
}

//-----------------------------------------------------------
//
// Replace
//
// This function removes the hightest priority item from the
// m_ppHeap and puts it in the location that is pointed to by
// target.  It then replaces it with the object pointed to
// by item.  Then the function reheaps.
//
// Interrupts should be disabled before 
// calling this function
//
// parameters:
//	pQ........pointer to the priority queue
//	target....pointer to place to store removed item
//	item......pointer to item to add to queue
//
//	return value:
//		returns number of slots in use
//-----------------------------------------------------------

int Replace(PRIORITYQUEUE* pQ,void **target,void *item)
{
	int SlotsInUse;

	if((SlotsInUse = pQ->m_nItems) > 0)
	{
		if ((*pQ->m_Cmp)(&item,pQ->m_ppHeap) > 0)	//only replace if priority is less
		{
			*target = item;		//item is higher priority
		}
		else
		{
			*target = *pQ->m_ppHeap;
			*pQ->m_ppHeap = item;
			ReheapDown(pQ);
		}
	}
	else
		*target = item;
	return SlotsInUse;
}

/************************************************************************
**
** These functions are private to the class and are not accessable
**
************************************************************************/

/********************************************
**	swap
**
**	This function swaps two items in the 
**	queue
**
**	parameters:
**		ppS1......pointer to first object to swap
**		ppS2......pointer to second object to swap
********************************************/

static void swap(void **ppS1,void **ppS2)
{
	void *pTemp;

	pTemp = *ppS1;
	*ppS1 = *ppS2;
	*ppS2 = pTemp;
}

/***************************************************
** ReheapUp
**
**	parameter:
**		pQ.....pointer to priority queue
***************************************************/
static void ReheapUp(PRIORITYQUEUE* pQ)
{
	int parent;		//index of parent
	int child;		//index of child
	void **ppParent;	//pointer to parent
	void **ppChild;	//pointer to child

	//-------------------------
	// Index of child node
	//-------------------------
	child = pQ->m_nItems - 1;
	//-------------------------
	// Index of parent node
	// Keep looping while
	// parent is valid (>= 0)
	//-------------------------
	while(child > 0)
	{
		parent = PARENT(child);
		//-----------------------------
		// get pointers to parent
		// and child nodes
		//------------------------------
		ppChild = &pQ->m_ppHeap[child];
		ppParent = &pQ->m_ppHeap[parent];
		//--------------------------------
		// If the priority of the parent
		// is greater than or equal to
		// the priority of the child,
		// we are done, break from the loop
		//---------------------------------
		if( (*pQ->m_Cmp)(ppParent,ppChild) >= 0)
			break;
		//----------------------------------
		// swap the parent and child
		//----------------------------------
		swap(ppParent,ppChild);
		//----------------------------------
		// the new parent is the child
		//----------------------------------
		child = parent;
	}	//end of while statement
}

/***********************************************
**	RehapDown
**
**	parameters:
**		pQ.......pointer to the priority queue
**
***********************************************/
static void ReheapDown(PRIORITYQUEUE* pQ)
{
	int parent;	//index of parent
	int child;	//index of child
	void **ppParent;	//pointer to parent
	void **ppChild;   //pointer to child
	void **ppSibling;	//pointer to sibling
	void **ppHeap;	//pointer to m_ppHeap

	ppHeap = pQ->m_ppHeap;
	for(parent=0,child=1;child < pQ->m_nItems;)
	{
		//----------------------------------
		// get pointer to parent and child nodes
		//----------------------------------
		ppParent = &ppHeap[parent];
		ppChild = &ppHeap[child];
		//-----------------------------------
		// is there a possible sibling to
		// the child node?
		//------------------------------------
		if(child + 1 < pQ->m_nItems)
		{
			//---------------------------------
			// get a pointer to the sibling
			//---------------------------------
			ppSibling = ppChild + 1;
			//---------------------------------
			// is priority of child less than
			// that of the sibling?
			//---------------------------------
			if((*pQ->m_Cmp)(ppChild,ppSibling) < 0)
			{
				//--------------------------------
				// make the child equal to sibling
				//---------------------------------
				ppChild = ppSibling;
				//--------------------------------
				// make child index equal to that
				// of the sibling
				//--------------------------------
				child++;
			}
		}	//end of if(child + 1 < m_nItems)
		//-------------------------------------
		// if the priority of the parent is
		// greater than or equal to the child
		// we are done, break out of the loop
		//------------------------------------
		if((*pQ->m_Cmp)(ppParent,ppChild) >= 0)
			break;
		//-----------------------------------
		// swap the parent and child
		//----------------------------------
		swap(ppParent,ppChild);
		//----------------------------------
		// new parent is the child
		//----------------------------------
		parent = child;
		//----------------------------------
		// calculate new child index
		//----------------------------------
		child = LEFTCHILD(parent);
	}	//end of for loop
}

void *Get(PRIORITYQUEUE* pQ)
{
	return pQ->m_ppHeap[0];
}

int NumElem(PRIORITYQUEUE* pQ)
{
	return pQ->m_nItems;
}

void *GetI(PRIORITYQUEUE* pQ,int i)
{
	return pQ->m_ppHeap[i];
}
