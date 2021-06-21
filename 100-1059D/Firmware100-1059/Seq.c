/*
 * seq.c
 *
 * Created: 1/13/2019 6:24:36 PM
 *  Author: Jimmy
 */ 
 #include <avr/io.h>
 #include <avr/interrupt.h>
 #include <stdlib.h>
 #include "task.h"
 #include "MessageQueue.h"
#include "seq.h"
 #include "Uart.h"
 #include "MidiParse.h"
 #include "spi.h"
 #include "Firmware100-1059D.h"
 #include "system.h"

 TCB *pSeqTaskTCB;
 MESSAGE_QUEUE *pSeqMsg;

 void DumpByte(char b)
 {
	SendSysEx(&b,1,SYSEX_CMD_DUMP);
 }

 void SendCurrentStep(int SeqID,int EventID)
 {
	char *b = malloc(32);
	b[0] = SeqID;
	b[1] = EventID;
	SendSysEx(b,2,SYSEX_CMD_STEP);
	free(b);
 }

 void SendSysEx(char *data,int n,int cmd)
 {
	int i;

 	USART_PutC(SYSEX);
 	USART_PutC(0x7d);
	USART_PutC(cmd);
	for(i=0;i<n;++i)
		USART_PutC(data[i]);
 	USART_PutC(SYSEXEND);
 }
 void SeqTask(void *arg)  __attribute__ ( ( noreturn ) );
 void SeqTask(void *arg)
 {
	int i;
	int j;
	union {
		void *m_pVoid;
		GETEVENT_PAYLOAD *m_pGetEvent;
		SETEVENT_PAYLOAD *m_pSetEvent;
		DELEVENT_PAYLOAD *m_pDelEvent;
		ADDEVENT_PAYLOAD *m_pAddEvent;
		CREATE_PAYLOAD *m_Create;
		GETnEVENTS *m_pGetnEvents;
	}c;
	SEQ **ppSequencers;
	MSG *pMSG=0;
	int Start=0;
	SEQ_EVENT *pE;
	char *buff = malloc(256);

	//****************************************
	//		Initialize local variables
	//****************************************
	ppSequencers = (SEQ **)malloc(sizeof(SEQ *) * 4);
	for(i=0;i<4;++i)
	{
//		ClearGatePort(GATE_SEQ0+i);	//reset the gate
		//allocate a sequencer
		ppSequencers[i] = malloc(sizeof(SEQ));
		//set the number of step to 8
		ppSequencers[i]->m_nSteps = 8;
		ppSequencers[i]->m_CurPos = 0;
		//allocate sequencer events
		ppSequencers[i]->m_pSteps = malloc(sizeof(SEQ_EVENT) * 8);
		//initialize all events to default value
		for(j=0;j<8;++j)
		{
			pE = ppSequencers[i]->m_pSteps;
			pE[j].m_Count = pE[j].m_Ticks = 24;
			pE[j].m_GateFlags = 16+2;
			pE[j].m_v = 0;
		}
	}
	while(1)
	{
		//***************************
		// wait on message queue
		// for a command
		//***************************
		pMSG = MqGet(pSeqMsg);
		// get a pointer to the payload
		c.m_pVoid = pMSG->Payload;
		//decode message command
		switch(pMSG->MsgCmd)
		{
			case SEQMSG_START:
				Start = 1;	//sequencer is running
				for(i=0;i<4;++i)
				{
//					ClearGatePort(GATE_SEQ0+i);	//reset the gate
					ppSequencers[i]->m_CurPos = 0;
					for(j=0;j<8;++j)
					{
						pE = ppSequencers[i]->m_pSteps;
						pE[j].m_Count = pE[j].m_Ticks;
					}
				}
				break;
			case SEQMSG_STOP:
				Start = 0;	//sequencer is stopped
				break;
			case SEQMSG_GETEVENT:
				//------------------------
				//	Get the data associated
				// with an Event as determined
				// by the sequencer ID and
				// the Event ID
				//------------------------
				pE = &ppSequencers[c.m_pGetEvent->m_SeqID]->m_pSteps[c.m_pGetEvent->m_EventID];
				buff[0] = c.m_pGetEvent->m_SeqID;
				buff[1] = c.m_pGetEvent->m_EventID;
				buff[2] = LO7(pE->m_v);
				buff[3] = HI7(pE->m_v);
				buff[4] = pE->m_Ticks;
				buff[5] = pE->m_GateFlags;
				SendSysEx(buff,6,SYSEX_CMD_GETEVENT);
				break;
			case SEQMSG_SETEVENT:
				pE = &ppSequencers[c.m_pSetEvent->m_SeqID]->m_pSteps[c.m_pSetEvent->m_EventID];
				pE->m_v = c.m_pSetEvent->m_v;
				pE->m_Ticks = c.m_pSetEvent->m_Ticks;
				pE->m_Count = pE->m_Ticks;
				pE->m_GateFlags = c.m_pSetEvent->m_GateFlags;
				break;
			case SEQMSG_DELEVENT:
				break;
			case SEQMSG_ADDEVENT:
				break;
			case SEQMSG_TICK:
				if(Start)
				{
					for(i=0;i<4;++i)
					{
						if(ppSequencers[i]->m_pSteps)
						{
							pE = &ppSequencers[i]->m_pSteps[ppSequencers[i]->m_CurPos];
							if(pE->m_Count == pE->m_Ticks)
							{
//								SendData(pE->m_v,SPIPORT_SEQ0 + i);
//								SetGatePort(GATE_SEQ0 + i);
								SendCurrentStep(i,ppSequencers[i]->m_CurPos);
							}
							pE->m_Count--;
							if (pE->m_Count == 8)
							{
//								ClearGatePort(GATE_SEQ0+i);
							}
							else if(pE->m_Count == 0)
							{
								pE->m_Count = pE->m_Ticks;
								ppSequencers[i]->m_CurPos++;
								if(ppSequencers[i]->m_CurPos == ppSequencers[i]->m_nSteps)
									ppSequencers[i]->m_CurPos = 0;
							}
						}
					}
				}
				break;
			case SEQMSG_CREATE:
				ppSequencers[c.m_Create->m_SeqID]->m_nSteps = c.m_Create->m_Size;
				ppSequencers[c.m_Create->m_SeqID]->m_pSteps = (SEQ_EVENT *)malloc(sizeof(SEQ_EVENT) * c.m_Create->m_Size);
				break;
			case SEQMSG_GET_NEVENTS:
				buff[0] = ppSequencers[c.m_pSetEvent->m_SeqID]->m_nSteps;
				SendSysEx(buff,1,SYSEX_CMD_GETNEVENTS);
				break;
			case SEQMSG_CONTINUE:
				Start = 1;
//				SetGatePort(GATE_STARTSTOP);
				break;
		}
		free(pMSG);
	}
 }

 void InitSeq(void)
 {
	pSeqMsg = MqInit(64,"SeqMsg");
	pSeqTaskTCB = NewTask(SeqTask,512,2,"Seq",0);
	Insert(&ActiveTasks,pSeqTaskTCB);
 }