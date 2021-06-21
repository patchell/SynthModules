/*******************************************************************************
** Message Queue Manager
** Created April 12, 2007
** Jim Patchell
*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "task.h"
#include "MessageQueue.h"
#include "semaphore.h"

static SEMAPHORE *MqBlocker;
int MsgAllocCount = 0;

/**********************************************
	MqInit
		Create a new message queue
	parameters:
		size......max number of messages in queue
		name......name of message queue
	return value:
		pointer to new message queue
**********************************************/

MESSAGE_QUEUE * MqInit(int size,char *name)
{
	char *buffer = malloc(sizeof(MESSAGE_QUEUE) + size * sizeof(MSG*) );
	MESSAGE_QUEUE *rv = (MESSAGE_QUEUE *)buffer;
	MSG **pM = (MSG **)(&buffer[sizeof(MESSAGE_QUEUE)]);
	PendSemaphore(MqBlocker,0);		//protect access
	rv->Head = 0;
	rv->Tail = 0;
	rv->nMsg = 0;
	rv->b = pM;
	rv->Size = size;
	rv->Sem = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,name);
	PostSemaphore(MqBlocker,0);		//release access
	return rv;
}

/*********************************************
	MqPut
		Put a message into a message queue
	parameters:
		mq.....pointer to the message queue
		m......pointer to message to send
*********************************************/

void MqPut(MESSAGE_QUEUE *mq,MSG *m)
{
	char sr=0;

	if(mq)	//are we live?
	{
		if(!InterruptCount)sr = Disable();		//enter critical section
		if(mq->nMsg < mq->Size)	//is there room?
		{
			mq->b[mq->Head++] = m;	//put message into queue
			if(mq->Head == mq->Size)
				mq->Head = 0;	//wrap head pointer
			mq->nMsg++;			//increment number of messages
			PostSemaphore(mq->Sem,0);
		}
		if(!InterruptCount)Enable(sr);			//exit critical section
	}
}

/************************************************
	MqGet
		Get a message from the message queue
	parameters:
		mq.....pointer to message queue
	return value:
		pointer to a message block
************************************************/
MSG *MqGet(MESSAGE_QUEUE *mq)
{
	char sr;
	MSG *retval = 0;

	if(mq)
	{
		PendSemaphore(mq->Sem,0);		//wait for message
		sr = Disable();				//endter critical section
		retval = mq->b[mq->Tail++];	//remove message from queue
		if(mq->Tail == mq->Size)	//are we at the end of the line
			mq->Tail = 0;			//wrap tail pointer
		mq->nMsg--;					//decrement number of messages in queue
		Enable(sr);
	}
	return retval;
}

/*************************************************
	NewMSG
		Create a new message
	parameters:
		payloadSize.....size in bytes of message
	return value:
		NULL on fail
		Pointer to Message Block on success
************************************************/

MSG *NewMSG(int payloadSize)
{
	MSG *retval = 0;

	if((retval = (MSG *)malloc(sizeof(MSG) + payloadSize)) != NULL)
	{
		MsgAllocCount++;
		retval->MaxPayload = payloadSize;
		retval->ReplyHandle = NULL;
		retval->PayloadSize = 0;
		retval->next = 0;
		retval->PayloadSize = 0;
	}
	return retval;
}

/*********************************************
	DeleteMSG
		Delete a message
	parameter:
		m......pointer to message to delete
*********************************************/

void DeleteMSG(MSG *m)
{
	//-------------------------------------
	//put message into message pool
	//-------------------------------------
	free(m);
}

/*******************************************
	InitMessageQueueManager
		Prepare Message Queue manager for
		creating Message Queues
*******************************************/

void InitMessageQueueManager(void)
{
	//--------------------------------------
	// Allow access to one task at a time
	//--------------------------------------
	MqBlocker = NewSemaphore(1,SEMAPHORE_MODE_BLOCKING,"MSG_BLOCKER");
}

