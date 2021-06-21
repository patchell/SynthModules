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


//---------------------------------------------------------
//
// PQ constructor
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
void InitPQ(PQ *q,int ne,int (*c)(void **,void **))
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
//	q.......pointer to the priority queue
//	item....pointer to item to add to queue
//
// return value:
//		space available in queue
//
//---------------------------------------------------------
//
int Insert(PQ* q,void *item)
{
	int space_avail;

	space_avail = q->m_Maxitems - q->m_nItems;
	if((space_avail) > 0)
	{
		++q->m_nItems;
		*(++q->m_ppBottom) = item;
		ReheapUp(q);
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
//	q.......pointer to the priority queue
//	target..pointer to place to store pointer to item
//
// return value:
//		returns slots in use in the queue
//---------------------------------------------------------

int Delete(PQ* q,void **target)
{
	int SlotsInUse;

	if((SlotsInUse = q->m_nItems) > 0)
	{
		*target = *q->m_ppHeap;		//get item from top of m_ppHeap
		*q->m_ppHeap = *q->m_ppBottom--;
		--q->m_nItems;
		ReheapDown(q);
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
//	q.........pointer to the priority queue
//	target....pointer to place to store removed item
//	item......pointer to item to add to queue
//
//	return value:
//		returns number of slots in use
//-----------------------------------------------------------

int Replace(PQ* q,void **target,void *item)
{
	int SlotsInUse;

	if((SlotsInUse = q->m_nItems) > 0)
	{
		if ((*q->m_Cmp)(&item,q->m_ppHeap) > 0)	//only replace if priority is less
		{
			*target = item;		//item is higher priority
		}
		else
		{
			*target = *q->m_ppHeap;
			*q->m_ppHeap = item;
			ReheapDown(q);
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

void swap(void **ppS1,void **ppS2)
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
**		q......pointer to priority queue
***************************************************/
void ReheapUp(PQ* q)
{
	int parent;		//index of parent
	int child;		//index of child
	void **ppParent;	//pointer to parent
	void **ppChild;	//pointer to child

	//-------------------------
	// Index of child node
	//-------------------------
	child = q->m_nItems - 1;
	//-------------------------
	// Index of parent node
	// Keep looping while
	// parent is valid (>= 0)
	//-------------------------
	while((parent = (child - 1)/2) >= 0)
	{
		//-----------------------------
		// get pointers to parent
		// and child nodes
		//------------------------------
		ppChild = &q->m_ppHeap[child];
		ppParent = &q->m_ppHeap[parent];
		//--------------------------------
		// If the priority of the parent
		// is greater than or equal to
		// the priority of the child,
		// we are done, break from the loop
		//---------------------------------
		if( (*q->m_Cmp)(ppParent,ppChild) >= 0)
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
**		q........pointer to the priority queue
**
***********************************************/
void ReheapDown(PQ* q)
{
	int parent;	//index of parent
	int child;	//index of child
	void **ppParent;	//pointer to parent
	void **ppChild;   //pointer to child
	void **ppSibling;	//pointer to sibling
	void **ppHeap;	//pointer to m_ppHeap

	ppHeap = q->m_ppHeap;
	for(parent=0,child=1;child < q->m_nItems;)
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
		if(child + 1 < q->m_nItems)
		{
			//---------------------------------
			// get a pointer to the sibling
			//---------------------------------
			ppSibling = ppChild + 1;
			//---------------------------------
			// is priority of child less than
			// that of the sibling?
			//---------------------------------
			if((*q->m_Cmp)(ppChild,ppSibling) < 0)
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
		if((*q->m_Cmp)(ppParent,ppChild) >= 0)
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
		child = parent * 2 + 1;
	}	//end of for loop
}

void *Get(PQ* q)
{
	return q->m_ppHeap[0];
}

int NumElem(PQ* q)
{
	return q->m_nItems;
}

void *GetI(PQ* q,int i)
{
	return q->m_ppHeap[i];
}
