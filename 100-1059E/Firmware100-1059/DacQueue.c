/*
 * DacQueue.c
 *
 * Created: 8/8/2018 1:03:46 PM
 *  Author: Jimmy
 */ 

 #include <stdlib.h>
 #include "DacQueue.h"

 /*********************************************
	NewDACQueue
		Create a new Dac Queue
	parameters:
		size...size of the queue to create
	return value
		returns a pointer to a DACQUEUE object
 *********************************************/
 DACQUEUE *NewDACQueue(int size)
 {
	char *s;
	DACQUEUE *rV = malloc(sizeof(DACQUEUE) + sizeof(int) * size + size);
	s = (char *)rV;
	rV->m_Head = 0;
	rV->m_Tail = 0;
	rV->m_Size = size;
	rV->m_nItems = 0;
	rV->m_pDacChan = &s[sizeof(DACQUEUE)];
	rV->m_pDacVal = (int *)&s[sizeof(DACQUEUE) + size];
	return rV;
 }

 /*************************************************
	AddDacVal
		Add a new DAC value and channel to the queue
	parameters:
		q........pointer to the queue to add to
		val......New Dac Value
		chan.....Channel number for new dac value
 *************************************************/

 void AddDacVal(DACQUEUE *q,int val, char chan,char GateFlag)
 {
	q->m_pDacVal[q->m_Head] = val;
	q->m_GateFlags[q->m_Head] = GateFlag;
	q->m_pDacChan[q->m_Head++] = chan;
	if(q->m_Size == q->m_Head)
		q->m_Head = 0;
 	q->m_nItems++;
}

 /*************************************************
	GetDacVal
		Get the oldest DAC value from the queue
		This function should be called before
		calling GetDacChan
	parameters:
		q.....q to get data from
	return value
		returns DAC value
 *************************************************/
 int GetDacVal(DACQUEUE *q)
 {
	int rV;

	rV = q->m_pDacVal[q->m_Tail];
	return rV;
 }

 /**************************************************
	GetGateFlag
		Get the flag that indicates if the gate
		should be turned on or off
	parameters:
		q.......pointer to the queue object
	return value:
		returns the gate flag
 **************************************************/
 char GetGateFlag(DACQUEUE *q)
 {
	char rv;
	rv = q->m_GateFlags[q->m_Tail];
	return rv;
 }

 /*************************************************
	GetDacChan
		Get the channel number for the oldest
		DAC value in the queue.
		This function should be called after
		calling GetDacVal
	parameters:
		q.......q to get channel number from
	return value:
		returns channel number
 *************************************************/
 char GetDacChan(DACQUEUE *q)
 {
	char rV;

	rV = q->m_pDacChan[q->m_Tail++];
	if(q->m_Size == q->m_Tail)
		q->m_Tail = 0;	//wrap tail pointer
	q->m_nItems--;
	return rV;
 }
