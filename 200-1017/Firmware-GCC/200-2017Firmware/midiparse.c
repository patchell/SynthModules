//*********************************************
// Midiparse.c
//
// This file contains a Midi Parser.
// The Midiparse function requires the use of
// a descriptor block that keeps track of
// the midi device that MIDI is being parsed
// for, and it also has a set of hooks that
// route the incoming data to the appropriate
// instrument function.
//
// Created by Jim Patchell
//	April 18, 2012
// This code is in the public domain and
// is open source.
//***********************************************

#include <stdio.h>
#include <stdlib.h>
#include "MidiParse.h"
#include "2001017.h"
#include "system.h"
#include "MessageQueue.h"
#include "chip.h"
#include "Uart.h"

extern SEMAPHORE *pSemReset,*pSemClock;
extern MESSAGE_QUEUE *pMsgDac;

char MidiChan = DEFAULT_CHANNEL;
char GateState=0;
char CurrentNote;

MIDIPARSE_D *newMidiParseDescriptor(void)
{
	//currently, this function does nothing.
	MIDIPARSE_D *pMD = 0;
	return pMD;
}

void InitMidiParseDesc(MIDIPARSE_D *pMD)
{
	pMD->chan = 0;
	pMD->cmd = 0;
	pMD->state = IDLE;
	pMD->SysexCount = 0;
	pMD->DefMidiChan = 0;
	pMD->nextnote = 0;
	pMD->currentnote = 0;
	pMD->pSysExData = 0;
}
//---------------------------------
// Action Functions for Midi Parser
//---------------------------------

void ActionSysEx(MIDIPARSE_D *pMD)
{
	pMD->SysexCount = 0;
	pMD->pSysExData = malloc(128);
}

void ActionSysExData(MIDIPARSE_D *pMD,unsigned char c)
{
	if(pMD->SysexCount < 128)
	{
		pMD->pSysExData[pMD->SysexCount++] = c;
	}
}

void ActionMTCQuarterFrameMessage(unsigned char v)
{

}

void ActionSysComSongPos(unsigned int Pos)
{

}

void ActionSysComSongSel(unsigned char song)
{

}

void ActionSysComUndef1(void)
{
}

void ActionSysComUndef2(void)
{

}

void ActionSysComTuneReq(void)
{

}

void ActionSysExEnd(MIDIPARSE_D *pMD)
{
	//----------------------------------------
	// This is where we execute SYSEX commands
	//-----------------------------------------
	int Cmd = pMD->pSysExData[1];
	int Id = pMD->pSysExData[0];
	if(0x7d == Id)	//educational/developement ID
	{
		switch(Cmd)
		{
			case SYSEX_CMD_CHANNEL:
				MidiChan = pMD->pSysExData[2];
				break;
			case SYSEX_CMD_DUMP:
				break;
			case SYSEX_CMD_GETCHANNEL:
				USART_PutC(0xf0);
				USART_PutC(0x7d);
				USART_PutC(SYSEX_CMD_GETCHANNEL);
				USART_PutC(MidiChan);
				USART_PutC(0xf7);
				break;
		}
	}
	free(pMD->pSysExData);
	pMD->SysexCount = 0;
}

void ActionSysRTClock(void)
{
	SetGatePort(GATE_CLOCK);
	PostSemaphore(pSemClock,0);
}

void ActionSysRTUndef(void)
{

}

void ActionSysRTStart(void)
{
	SetGatePort(GATE_STARTSTOP);
}

void ActionSysRTContinue(void)
{
	SetGatePort(GATE_STARTSTOP);
}

void ActionSysRTStop(void)
{
	ClearGatePort(GATE_STARTSTOP);
}

void ActionSysRTUndef1(void)
{

}

void ActionSysRTActiveSense(void)
{

}

void ActionSysRTReset(void)
{
	SetGatePort(GATE_RESET);
	PostSemaphore(pSemReset,0);
}

void ActionNoteOff(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	MSG *pMSG;
	DACMSG_SETDAC_PAYLOAD *pDacData;
	if(chan == MidiChan)
	{
		if(Note == CurrentNote)
		{
			pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
			pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
			pDacData->m_Chan = DACCHAN_PITCH;
			pDacData->DacVal = (unsigned)Note << 9;
			pDacData->Gate = GATEFLAG_GATEOFF;
			MqPut(pMsgDac,pMSG);
			pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
			pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
			pDacData->m_Chan = DACCHAN_VEL;
			pDacData->DacVal = Vel << 7;
			pDacData->Gate = 0;
			MqPut(pMsgDac,pMSG);
			GateState = GATESTATE_OFF;
		}
	}
}

void ActionNoteOn(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	MSG *pMSG;
	DACMSG_SETDAC_PAYLOAD *pDacData;
	int gate;

	if(chan == MidiChan)	//does channel match?
	{
		pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
		pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
		pDacData->m_Chan = DACCHAN_PITCH;
		pDacData->DacVal = Note << 9;
		if(Vel)
			gate = GATEFLAG_GATEON;
		else
			gate = GATEFLAG_GATEOFF;
		pDacData->Gate = gate;
		MqPut(pMsgDac,pMSG);	//message to set note
		pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
		pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
		pDacData->m_Chan = DACCHAN_VEL;
		pDacData->DacVal = (unsigned)Vel << 9;
		pDacData->Gate = 0;
		MqPut(pMsgDac,pMSG);	//message to set velocity
		GateState = GATESTATE_OFF;
		GateState = Vel?GATESTATE_ON:GATESTATE_OFF;
		CurrentNote = Note;
	}
}

void ActionAfterTouch(unsigned char chan,unsigned char Note, unsigned char Pressure)
{
	MSG *pMSG;
	DACMSG_SETDAC_PAYLOAD *pDacData;
	if(chan == MidiChan)
	{
		pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
		pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
		pDacData->DacVal = (int)Pressure << 9;
		pDacData->Gate = 0;
		pDacData->m_Chan = DACCHAN_CV1;
		MqPut(pMsgDac,pMSG);
	}
}

void ActionChanPressure(unsigned char chan, unsigned char Pressure)
{
	if(chan == MidiChan)
	{
		MSG *pMSG;
		DACMSG_SETDAC_PAYLOAD *pDacData;
		pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
		pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
		pDacData->DacVal = (unsigned)Pressure << 9;
		pDacData->Gate = 0;
		pDacData->m_Chan = DACCHAN_CV1;
		MqPut(pMsgDac,pMSG);
	}
}

void ActionProgramChange(unsigned char chan,unsigned char patch)
{
}

void ActionPitchWheel(unsigned char chan,unsigned data)
{
	if(chan == MidiChan)
	{
		MSG *pMSG;
		DACMSG_SETDAC_PAYLOAD *pDacData;

		pMSG = NewMSG(sizeof(DACMSG_SETDAC_PAYLOAD));
		pDacData = (DACMSG_SETDAC_PAYLOAD *)pMSG->Payload;
		pDacData->DacVal = (unsigned)data;
		pDacData->Gate = 0;
		pDacData->m_Chan = DACCHAN_CV2;
		MqPut(pMsgDac,pMSG);
	}
}

void ActionController(unsigned char chan,unsigned char Num,unsigned char val)
{

}

int ParseMidi(MIDIPARSE_D *pMp, unsigned char c)
{
	//-----------------------------------------
	// parse MIDI data for a given midi machine
	//
	// parameters:
	//	pMp.....pointer to descriptor for midi machine
	//	c.......a byte of midi data
	//
	// returns:
	//	0
	//-----------------------------------------
	if(c & (unsigned char)0x80)	//is it a command?
	{
		if(c < (unsigned char)0xf0)
		{
			//process this stuff, dispose of everything else
			pMp->cmd = (unsigned char)(c & (unsigned char)0xf0);
			pMp->chan = (unsigned char)(c & 0x0f);
			pMp->state = NOTE0;
		}
		else	//process system commands
		{
			switch(c)
			{
				case SYSEX:	//n bytes defined by command
                   	pMp->state = SYSEX_STATE;
                    pMp->cmd = SYSEX;
					ActionSysEx(pMp);
					break;
				case SYSCOM_MTCQUARTERFRAME:		//2 bytes
					pMp->cmd = SYSCOM_MTCQUARTERFRAME;
					pMp->state = SYSCOM_STATE;
					break;
				case SYSCOMSONGPOS:		//3 bytes
					pMp->cmd = SYSCOMSONGPOS;
					pMp->state = NOTE0;
					break;
				case SYSCOMSONGSEL:		//2 bytes
					pMp->cmd = SYSCOMSONGSEL;
					pMp->state = SYSCOM_STATE;
					break;
				case SYSCOMUNDEF1:
					ActionSysComUndef1();
					break;
				case SYSCOMUNDEF2:
					ActionSysComUndef2();
					break;
				case SYSCOMTUNEREQ:		//1 byte
					ActionSysComTuneReq();
					break;
				case SYSEXEND:			//1 byte
                   	pMp->state = IDLE;
                    pMp->cmd = SYSEXEND;
					ActionSysExEnd(pMp);
					break;
				case SYSRTCLOCK:		//1 byte
					ActionSysRTClock();
					break;
				case SYSRTUNDEF:
					ActionSysRTUndef();
					break;
				case SYSRTSTART:		//1 byte
					ActionSysRTStart();
					break;
				case SYSRTCONTINUE:		//1 byte
					ActionSysRTContinue();
					break;
				case SYSRTSTOP:			//1 byte
					ActionSysRTStop();
					break;
				case SYSRTUNDEF1:
					ActionSysRTUndef1();
					break;
				case SYSRTACTIVESEN:	//1 byte
					ActionSysRTActiveSense();
					break;
				case SYSRTRESET:		//1 byte
					ActionSysRTReset();
					break;
			}	//end of switch(c)
		}	//end of if(c < 0xf0)
	}
	else	// 	then it must be data
	{
		/*	we must handle the case of running status...so we need to keep track of
		**  which data byte we are on
		*/
		switch(pMp->cmd)	//what was the last command?
		{
			case NOTEOFF:	//last command was note off 3 bytes
				switch(pMp->state)
				{
					case NOTE0:
						pMp->nextnote = c;
						pMp->state = NOTE1;
						break;
					case NOTE1:
						pMp->currentnote = pMp->nextnote;
						ActionNoteOff(pMp->chan,pMp->nextnote,c);
						pMp->state = NOTE0;
						break;
				}
				break;
			case NOTEON:	// last command was note on 3 bytes
				switch(pMp->state)
				{
					case NOTE0:
						pMp->nextnote = c;
						pMp->state = NOTE1;
						break;
					case NOTE1:
						pMp->currentnote = pMp->nextnote;
						if(c > 0)
							ActionNoteOn(pMp->chan,pMp->currentnote,c);
						else
							ActionNoteOff(pMp->chan,pMp->nextnote,c);
						pMp->state = NOTE0;
						break;
					default:
						break;
				}
				break;
			case NOTEPRES:	// last command was note pressure  3 bytes
				switch(pMp->state)
				{
					case NOTE0:
						pMp->nextnote = c;
						pMp->state = NOTE1;
						break;
					case NOTE1:
						pMp->state = NOTE0;
						pMp->currentnote = pMp->nextnote;
						ActionAfterTouch(pMp->chan,pMp->currentnote,c);
						break;
				}
				break;
			case CHANPRES:		//last command was channel pressuren 2 bytes
				ActionChanPressure(pMp->chan,c);
				break;
			case CONTROL:			//control change 3 bytes
				switch(pMp->state)
				{
					case NOTE0:
						pMp->state = NOTE1;
						pMp->nextnote = c;
						break;
					case NOTE1:
						pMp->state = NOTE0;
						pMp->currentnote = pMp->nextnote;
						ActionController(pMp->chan,pMp->currentnote,c);
						break;
				}
				break;
			case WHEEL:			//last command was pitch wheel change 3 bytes
				switch(pMp->state)
				{
					case NOTE0:
						pMp->v = ((int)c);
						pMp->state = NOTE1;
						break;
					case NOTE1:
						pMp->v |= ((int)c)<<7;
						pMp->v <<= 2;	//12 bits;
						pMp->state = NOTE0;
						ActionPitchWheel(pMp->chan,pMp->v);
						break;
				}
				break;
			case PATCH:			//last command was patch change 2 bytes
				pMp->state = NOTE0;
				ActionProgramChange(pMp->chan,c);
				break;
			case SYSEX:		//1 byte...This is where we pass of sysex data
				ActionSysExData(pMp,c);
               	break;
			case SYSCOM_MTCQUARTERFRAME:
				pMp->state = IDLE;
				ActionMTCQuarterFrameMessage(c);
				break;
			case SYSCOMSONGPOS:
				switch(pMp->state)
				{
					case NOTE0:
						pMp->v = ((int)c);
						pMp->state = NOTE1;
						break;
					case NOTE1:
						pMp->v |= ((int)c)<<7;
						pMp->v <<= 2;	//12 bits;
						pMp->state = IDLE;
						ActionSysComSongPos(pMp->v);
						break;
				}
				break;
			case SYSCOMSONGSEL:
				pMp->state = IDLE;
				ActionSysComSongSel(c);
				break;
		}	//end of switch(cmd)
	}	//end of if(c & 0x080)
	return 0;
}


