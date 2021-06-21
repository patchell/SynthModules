/*
 * seq.h
 *
 * Created: 1/13/2019 6:25:08 PM
 *  Author: Jimmy
 */ 


#ifndef SEQ_H_
#define SEQ_H_

extern MESSAGE_QUEUE *pSeqMsg;

//**************************************
//		Message commands
//**************************************

#define SEQMSG_START	0
#define SEQMSG_STOP		1
#define SEQMSG_GETEVENT	2
#define SEQMSG_SETEVENT	3
#define SEQMSG_DELEVENT	4
#define SEQMSG_ADDEVENT	5
#define SEQMSG_TICK		6
#define SEQMSG_CREATE	7
#define SEQMSG_GET_NEVENTS	8
#define SEQMSG_CONTINUE		9

//**********************************
//		Message Payload types
//**********************************
typedef struct {	//SEQMSG_GET_NEVENTS
	unsigned m_SeqID;
}GETnEVENTS;

typedef struct {	//SEQMSG_GETEVENT
	unsigned m_SeqID;
	unsigned m_EventID;
}GETEVENT_PAYLOAD;

typedef struct {	//SEQMSG_SETEVENT
	unsigned m_SeqID;
	unsigned m_EventID;
	unsigned m_v;		//value to set voltage to
	unsigned char m_GateFlags;	//what to do with gate signal
	unsigned char m_Ticks;
}SETEVENT_PAYLOAD;

typedef struct {	//SEQMSG_DELEVENT
	unsigned m_SeqID;
	unsigned m_EventID;
}DELEVENT_PAYLOAD;

typedef struct {	//SEQMSG_ADDEVENT
	unsigned m_SeqID;
	unsigned m_EventID;
}ADDEVENT_PAYLOAD;

typedef struct {
	unsigned m_SeqID;
	unsigned m_Size;
}CREATE_PAYLOAD;

//**********************************
// Sequencer data types
//***********************************
typedef struct {
	unsigned m_v;		//value to set voltage to
	unsigned char m_GateFlags;	//what to do with gate signal
	unsigned char m_Ticks;
	unsigned char m_Count;
}SEQ_EVENT;

typedef struct {
	int m_nSteps;
	int m_CurPos;
	SEQ_EVENT *m_pSteps;
}SEQ;

extern void InitSeq(void);
extern void SendSysEx(char *data,int n,int cmd);
extern void DumpByte(char b);

#endif /* SEQ_H_ */