//********************************************************
//
// ByteQueue.c
//		This is a special version of
//	ByteQueue in that the semaphore has
//	been removed.
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
	int retval;

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
	}
	else
	{
		retval = -1;
	}
	return retval;
}

int BQPut(BQ *pBQ,int c)
{
	//-------------------------------------
	//	BQPut
	//		Put a character into the queue
	//
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
	return retval;
}
