//----------------------------------------------------------
//
// Priority Queue Class
//
// The elements of the Q consist of an Array of pointers
// To the various elements of the Q
// No real data actuall exists in this thing.
//
//----------------------------------------------------------

#ifndef PQ__H
#define PQ__H

typedef struct pq {
	int (*m_Cmp)(void **,void **);		/*	compare two objects		*/
	int m_nItems;							/*	number of items in heap		*/
	int m_Maxitems;						/*	maximum number of items in heap	*/
	void **m_ppBottom;						/*	prt to most recently added item	*/
	void **m_ppHeap;						/*	pointer to the heap itself		*/
}PQ;

extern void swap(void **,void **);
extern void ReheapUp(PQ* q);
extern void ReheapDown(PQ* q);
extern void InitPQ(PQ *q,int ne,int (*c)(void **,void **));
extern int Insert(PQ* q,void *item);
extern int Delete(PQ* q,void **target);
extern void *Get(PQ* q);	//return pointer to highest priority item
extern int NumElem(PQ* q);	//get total number of items
extern int Replace(PQ* q,void **target,void *item);
extern void *GetI(PQ* q,int i);	//return pointer to indexed item

#endif
