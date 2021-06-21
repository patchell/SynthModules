/*
 * DacQueue.h
 *
 * Created: 8/8/2018 12:57:27 PM
 *  Author: Jimmy
 */ 


#ifndef DACQUEUE_H_
#define DACQUEUE_H_

typedef struct {
	int m_Head;	//head index
	int m_Tail;	//Tail index
	int m_nItems;	//number of items
	int m_Size;	//size of queue
	int *m_pDacVal;	//buffer of DAC values
	char *m_pDacChan;	//buffer of DAC channels
	char *m_GateFlags;	//buffer of turn gate on
}DACQUEUE;

DACQUEUE *NewDACQueue(int size);
void AddDacVal(DACQUEUE *q,int val, char chan, char GateFlag);
int GetDacVal(DACQUEUE *q);
char GetGateFlag(DACQUEUE *q);
char GetDacChan(DACQUEUE *q);

#endif /* DACQUEUE_H_ */