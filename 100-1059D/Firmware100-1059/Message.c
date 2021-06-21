/*
 * Message.c
 *
 * Created: 2/7/2019 7:19:56 PM
 *  Author: Jimmy
 */
 #include <stdlib.h>
 #include "semaphore.h"
 #include "Message.h"

 MESSBUFF *NewMessageBuffer(int size)
 {
	MESSBUFF *pMB;
	pMB = (MESSBUFF *)malloc(sizeof (MESSBUFF));
	pMB->m_Buff = (MESSAGE *)malloc(sizeof(MESSAGE) * size);
	pMB->m_pSem = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"Message");
	pMB->m_Head = 0;
	pMB->m_Size = size;
	pMB->m_Tail = 0;
	pMB->n_Msg = 0;
	return pMB;
 }

 void PostMessage(MESSBUFF *pMB, int cmd,int Param1,int Param2)
 {
	if(pMB->n_Msg < pMB->m_Size)
	{
		pMB->m_Buff[pMB->m_Head].m_Cmd = cmd;
		pMB->m_Buff[pMB->m_Head].m_Param1 = Param1;
		pMB->m_Buff[pMB->m_Head].m_Param2 = Param2;
		pMB->m_Head++;
		if(pMB->m_Head == pMB->m_Size) pMB->m_Head = 0;
		pMB->n_Msg++;
		PostSemaphore(pMB->m_pSem,0);
	}
}

 MESSAGE *GetMessage(MESSBUFF *pMB)
 {
	MESSAGE *pMsg;

	PendSemaphore(pMB->m_pSem,0);
	pMsg = &pMB->m_Buff[pMB->m_Tail];
	if(++pMB->m_Tail == pMB->m_Size)
		pMB->m_Tail = 0;
	pMB->n_Msg--;
	return pMsg;
 }
