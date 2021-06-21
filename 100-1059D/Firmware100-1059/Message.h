/*
 * Message.h
 *
 * Created: 2/7/2019 7:19:31 PM
 *  Author: Jimmy
 */ 


#ifndef MESSAGE_H_
#define MESSAGE_H_

typedef struct {
	unsigned m_Cmd;	//message command
	unsigned m_Param1;	//first parameter
	unsigned m_Param2;	//second paramter
}MESSAGE;

typedef struct {
	SEMAPHORE *m_pSem;
	int n_Msg;	//number of messages in queue
	int m_Head;		//head pointer
	int m_Tail;		//tail pointer
	int m_Size;		//size of queue
	MESSAGE *m_Buff;//array of message pointers
}MESSBUFF;

MESSBUFF *NewMessageBuffer(int size);
void PostMessage(MESSBUFF *pMB, int cmd,int Param1,int Param2);
MESSAGE *GetMessage(MESSBUFF *pMB);

#endif /* MESSAGE_H_ */