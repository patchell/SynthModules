//********************************************************
//
// ByteQueue.c
//
//********************************************************

#include "stdio.h"
#include "task.h"
#include "ByteQueue.h"

/*************************************************
	CreateBQ
	This function is used to initialize the
	Byte Queue object.

	parameters:
		pBQ......pointer to byte queue object
		b........pointer to data buffer
		size.....size of data buffer in bytes
*************************************************/
void CreateBQ(BQ *pBQ,char *b,unsigned size)
{
	pBQ->task_h = NULL;	//no waiting tasks
	pBQ->pBfr = b;		//set buffer
	pBQ->Size = size;	//set size
	pBQ->Head = 0;		//head pointer zero
	pBQ->Tail = 0;		//tail pointer zero
	pBQ->nChar = 0;		//number of chars zero
}

int BQget(BQ *pBQ)
{
	//******************************************************
	//	BQget
	//		Get a character from the queue
	//
	//
	// parameters:
	//	pBQ........pointer to the queue to get a char from
	//
	// return value:
	//	returns a negative value on error
	//	returns a positive value on success
	//	suspends task if there are no characters to get
	//******************************************************
	char sr;
	int retval;

	sr = Disable();
	if(pBQ->nChar)	//are there any characters to get?
	{
		//-------------------------------------
		// Get Character from Buffer
		// Check Head pointer for Wrap
		// Increment number of chars in buffer
		//------------------------------------
		retval = (int)((unsigned char)pBQ->pBfr[pBQ->Head++]);
		if(pBQ->Head == pBQ->Size) pBQ->Head = 0;
		pBQ->nChar--;
		Enable(sr);
	}
	else			//no, suspend task
	{
		pBQ->task_h = CurrentTask;
		CurrentTask->status = EVENT_NOERROR;
		//---------------------------------
		//swap out current task
		//---------------------------------
		CurrentTask->TimeStamp = TStamp;
		if(Delete(&ActiveTasks,(void **)&NextTask))	//get highest priority task
		{
			NextTask->TcbSwaps++;
			DoSwap();                    //do context swap
			retval = (int)((unsigned char)pBQ->pBfr[pBQ->Head++]);
			if(pBQ->Head == pBQ->Size) pBQ->Head = 0;
			pBQ->nChar--;
		}
		else
		{
			CurrentTask->status = EVENT_NOTASKS;
			retval = CurrentTask->status;
		}
		Enable(sr);
	}
	return retval;
}

int BQPut(BQ *pBQ,int c)
{
	//-------------------------------------
	//	BQPut
	//		Put a character into the queue
	//
	// This function is intended to be used
	// inside of an interrupt routine to
	// signal a waiting task that data is
	// ready.  It can also be used at the
	// task level, however if the buffer
	// overflows, we just do nothing (well
	// we return an error...but that is it
	// Interrupt routines cannot care if
	// the queue is full
	//
	// Please note that "task Level" means 
	// that we are not inside of an interrupt
	// or that InterruptCount == 0
	//
	// parameters:
	//	pBQ.....pointer to queue to put data into
	//	c.......character to add to queue
	//
	// return value:
	//	0 on success
	//	negative value on fail
	//--------------------------------------
	char sr=0;
	int retval = EVENT_NOERROR;

	if(!InterruptCount)sr = Disable();		//just in case we are at task level
	//------------------------------------------
	// check to see if there is enough room
	// in the byte queue to add the byte
	//-----------------------------------------
	if(pBQ->nChar < pBQ->Size)	//any place for a character?
	{
		//add byte and increment tail pointer
		pBQ->pBfr[pBQ->Tail++] = (char)c;
		//check tail pointer to see if it needs to wrap
		if(pBQ->Tail == pBQ->Size) pBQ->Tail = 0;
		//increment number of characters in buffer
		pBQ->nChar++;
	}
	else
	{
		retval = EVENT_OVERFLOW;
	}
	if(pBQ->task_h)	//is there a task pending?
	{
		pBQ->task_h->status = retval;	//set its status to retval
		Insert(&ActiveTasks,pBQ->task_h);	//put task back onto active list
		pBQ->task_h = NULL;
		if(!InterruptCount)Enable(sr);	//enable interrupts
		Yield();	//if we are at task level...we will yeild
	}
	else
		if(!InterruptCount)Enable(sr);
	return retval;
}

int BQWrite(BQ *pBQ,char *b,int n)
{
	//-------------------------------------
	//	BQWrite
	//		Write a buffer into the queue
	//
	// This function is intended to be used
	// inside of an interrupt routine to
	// signal a waiting task that data is
	// ready.  It can also be used at the
	// task level, however if the buffer
	// overflows, we just do nothing (well
	// we return an error...but that is it
	// Interrupt routines cannot care if
	// the queue is full
	//
	// parameters:
	//	pBQ.....pointer to queue to put data into
	//	b.......buffer of characters to add to queue
	//	n.......Number of characters to add to queue
	//
	// return value:
	//	0 on success
	//	negative value on fail
	//--------------------------------------
	char sr=0;
	int retval = EVENT_NOERROR;
	int i;

	if(!InterruptCount)sr = Disable();		//just in case we are at task level
	//--------------------------------------------
	// check to see if there is enough room in
	// the buffer to write the requested number
	// of bytes
	//--------------------------------------------
	if((pBQ->nChar + n) < pBQ->Size)	//any place for the characters?
	{
		//-----------------------------------------
		// Add the data to the byte queue
		//-----------------------------------------
		for(i=0;i<n;++i)
		{
			pBQ->pBfr[pBQ->Tail++] = (char)b[i];
			if(pBQ->Tail == pBQ->Size) pBQ->Tail = 0;
			pBQ->nChar++;
		}
	}
	else
	{
		//------------------------------------
		// otherwise return an error
		//------------------------------------
		retval = EVENT_OVERFLOW;
	}
	if(pBQ->task_h)	//is there a task pending?
	{
		pBQ->task_h->status = retval;	//set its status to retval
		Insert(&ActiveTasks,pBQ->task_h);	//put task back onto active list
		pBQ->task_h = NULL;	//remove task from waiting list	
		if(!InterruptCount)Enable(sr);	//enable interrupts
		Yield();	//if we are at task level...we will yeild
	}
	else
		if(!InterruptCount)Enable(sr);
	return retval;
}

