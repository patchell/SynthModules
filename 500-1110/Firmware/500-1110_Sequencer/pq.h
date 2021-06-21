//----------------------------------------------------------
//
// Priority Queue Class
//
// The elements of the Q consist of an Array of pointers
// To the various elements of the Q
// No real data actually exists in this thing.
//
//----------------------------------------------------------

#ifndef PQ__H
#define PQ__H

#define PARENT(x)		((x-1)/2)
#define LEFTCHILD(x)	(x*2+1)	
#define RIGHTCHILD(x)	(x*2+2)	
typedef struct pq {
	int (*m_Cmp)(void **,void **);		/*	compare two objects		*/
	int m_nItems;							/*	number of items in heap		*/
	int m_Maxitems;						/*	maximum number of items in heap	*/
	void **m_ppBottom;						/*	prt to most recently added item	*/
	void **m_ppHeap;						/*	pointer to the heap itself		*/
}PRIORITYQUEUE;

extern void CreatePriorityQueue(PRIORITYQUEUE *q,int ne,int (*c)(void **,void **));
extern int Insert(PRIORITYQUEUE* q,void *item);
extern int Delete(PRIORITYQUEUE* q,void **target);
extern void *Get(PRIORITYQUEUE* q);	//return pointer to highest priority item
extern int NumElem(PRIORITYQUEUE* q);	//get total number of items
extern int Replace(PRIORITYQUEUE* q,void **target,void *item);
extern void *GetI(PRIORITYQUEUE* q,int i);	//return pointer to indexed item

#endif
