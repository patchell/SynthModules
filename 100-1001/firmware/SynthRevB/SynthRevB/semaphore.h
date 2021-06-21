/*
 * semeaphore.h
 *
 * Created: 8/16/2018 2:45:03 PM
 *  Author: Jimmy
 */ 


#ifndef SEMEAPHORE_H_
#define SEMEAPHORE_H_

#include "task.h"

/*-------------------------------------------------------------------
** Semaphore Object
**-----------------------------------------------------------------*/
typedef struct _semaphore {
	TCB *task_head;		//head pointer for list of waiting tasks
	TCB *task_tail;		//tail pointer for list of waiting tasks
	struct _semaphore *Tnext,*Tprev;	//Link list pointers for timeout list
	int SemaphoreMode;		//mode of semaphore
	int EventCount;			//counter for semaphore
} SEMAPHORE;

#define SEMAPHORE_MODE_BLOCKING		0
#define SEMAPHORE_MODE_TIMEOUT		1

extern SEMAPHORE *MasterList;	//head pointer for master semaphore list
extern SEMAPHORE *pTimeoutList;	//head pointer for timeout semaphore list

extern SEMAPHORE *NewSemaphore(int InitCount,int Mode);
extern void CreateSemaphore(SEMAPHORE *e,int InitCount,int Mode);
extern void DeleteSemaphore(SEMAPHORE *e);
extern int PendSemaphore(SEMAPHORE *e, int Timeout);	//wait for semaphore available
extern int PostSemaphore(SEMAPHORE *e, int Value);	//signal semaphore available


#endif /* SEMEAPHORE_H_ */