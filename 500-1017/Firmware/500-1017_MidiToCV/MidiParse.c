/*
 * MidiParse.c
 *
 * Created: 7/20/2018 12:49:16 PM
 *  Author: Jimmy
 */ 
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
#include <avr/io.h>
#include "MidiParse.h"
#include "system.h"
#include "MessageQueue.h"
#include "main.h"
#include "Settings.h"

char MidiChan = DEFAULT_CHANNEL;
char GateState=0;
char CurrentNote;

MIDIPARSE_D *newMidiParseDescriptor(void)
{
	MIDIPARSE_D *pMD = malloc(sizeof(MIDIPARSE_D));
	return pMD;
}

void InitMidiParseDesc(MIDIPARSE_D *pMD)
{
	pMD->chan = 0;
	pMD->cmd = 0;
	pMD->state = IDLE;
	pMD->SysexCount = 0;
	pMD->m_pSysExBuff = malloc(128);
	pMD->DefMidiChan = 0;
	pMD->nextnote = 0;
	pMD->currentnote = 0;
}
//---------------------------------
// Action Functions for Midi Parser
//---------------------------------

void ActionSysEx(MIDIPARSE_D *pMD)
{
	pMD->SysexCount = 0;
}

void ActionSysExData(MIDIPARSE_D *pMD,unsigned char c)
{
	//use manufacturers ID of 0x7D
	pMD->m_pSysExBuff[pMD->SysexCount++] = c;
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

/****************************************************
	ActionSysExEnd
		This function is called when we have
		received a SYSEX END status byte.  This
		is also when we execute that command
	parameter:
		pMD....pointer to a parser descriptor
****************************************************/
void ActionSysExEnd(MIDIPARSE_D *pMD)
{
	//--------------------------------
	// this is where we parse the
	// sysex data and do something 
	// with it
	//
	//	Command Format:
	//	Byte0:Command
	//--------------------------------
	char cmd = pMD->m_pSysExBuff[SYSEX_CMD];
	switch(cmd)
	{
		case SYSEX_CMD_CHANNEL_CH1:
			break;
		case SYSEX_CMD_CHANNEL_CH2:
			break;
		case SYSEX_CMD_CHANNEL_TRIG:
			break;
		case SYSEX_CMD_GETCHANNEL_CH1:
			break;
		case SYSEX_CMD_GETCHANNEL_CH2:
			break;
		case SYSEX_CMD_GETCHANNEL_TRIG:
			break;
	}	//end of switch command
}

/************************************************
	ActionSysRTClock
		This is the function that gets called
		when we receive a RTClock status byte
************************************************/
void ActionSysRTClock(void)
{

}

/************************************************
	ActionSysRTUndef
		This is the function that gets called
		when we receive a RTUndefined status byte
************************************************/

void ActionSysRTUndef(void)
{

}

/************************************************
	ActionSysRTStart
		This is the function that gets called
		when we receive a RTStart status byte
************************************************/

void ActionSysRTStart(void)
{

}

/************************************************
	ActionSysRTContinue
		This is the function that gets called
		when we receive a RTContinue status byte
************************************************/

void ActionSysRTContinue(void)
{

}

/************************************************
	ActionSysRTStop
		This is the function that gets called
		when we receive a RTStop status byte
************************************************/

void ActionSysRTStop(void)
{

}

/************************************************
	ActionSysRTUndef1
		This is the function that gets called
		when we receive a RTUndef1 status byte
************************************************/

void ActionSysRTUndef1(void)
{

}

/************************************************
	ActionSysRTActiveSense
		This is the function that gets called
		when we receive a RTActiveSense status byte
************************************************/

void ActionSysRTActiveSense(void)
{

}

/************************************************
	ActionSysRTReset
		This is the function that gets called
		when we receive a RTReset status byte
************************************************/

void ActionSysRTReset(void)
{

}

/****************************************************
	ActionNoteOff
		This is the function that gets called when
		all three bytes of a Note Off command have
		been received.  
	parameters:
		chan....Midi channel for the Note Off
		Note....Note that Note Off is for
		Vel.....Velocity parameter for Note Off event
****************************************************/

void ActionNoteOff(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	MSG *pMsg;
	if(chan == Settings.m_CH1_MidiChannel)
	{
		//send out pitch
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Note << 5;
		Payload->m_Channel = PAYLOAD_PITCH1;
		Payload->m_GateFlag = PAYLOAD_GATEOFF;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
		//send out velocity
		pMsg = NewMSG(3);
		Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Vel << 5;
		Payload->m_Channel = PAYLOAD_VELOC1;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_CH2_MidiChannel)
	{
		//send out pitch
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Note << 5;
		Payload->m_Channel = PAYLOAD_PITCH2;
		Payload->m_GateFlag = PAYLOAD_GATEOFF;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
		//send out velocity
		pMsg = NewMSG(3);
		Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Vel << 5;
		Payload->m_Channel = PAYLOAD_VELOC2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_TriggerMidiChannel)
	{
		//these are the trigger outputs,
		//which are just GATE signals for
		//the note messages
	}

}

/****************************************************
	ActionNoteOn
		This is the function that gets called when
		all three bytes of a Note On command have
		been received.  It should be noticed that
		if the velocity parameter is zero, then
		this will be the same as a Note Off
	parameters:
		chan....Midi channel for the Note Off
		Note....Note that Note Off is for
		Vel.....Velocity parameter for Note Off event
****************************************************/

void ActionNoteOn(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	MSG *pMsg;
	if(chan == Settings.m_CH1_MidiChannel)
	{
		//send out pitch
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Note << 5;
		Payload->m_Channel = PAYLOAD_PITCH1;
		if(Vel)
			Payload->m_GateFlag = PAYLOAD_GATEON;
		else
			Payload->m_GateFlag = PAYLOAD_GATEOFF;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
		//send out velocity
		pMsg = NewMSG(3);
		Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Vel << 5;
		Payload->m_Channel = PAYLOAD_VELOC1;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_CH2_MidiChannel)
	{
		//send out pitch
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Note << 5;
		Payload->m_Channel = PAYLOAD_PITCH2;
		if(Vel)
			Payload->m_GateFlag = PAYLOAD_GATEON;
		else
			Payload->m_GateFlag = PAYLOAD_GATEOFF;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
		//send out velocity
		pMsg = NewMSG(3);
		Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Vel << 5;
		Payload->m_Channel = PAYLOAD_VELOC2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_TriggerMidiChannel)
	{

	}
}

void ActionAfterTouch(unsigned char chan,unsigned char Note, unsigned char Pressure)
{
	MSG *pMsg;
	if(chan == Settings.m_CH1_MidiChannel)
	{
		//send out pressure
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Pressure << 5;
		Payload->m_Channel = PAYLOAD_PRESS1;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_CH2_MidiChannel)
	{
		//send out pressure
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Pressure << 5;
		Payload->m_Channel = PAYLOAD_PRESS2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
}

void ActionChanPressure(unsigned char chan, unsigned char Pressure)
{
	MSG *pMsg;
	if(chan == Settings.m_CH1_MidiChannel)
	{
		//send out pressure
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Pressure << 5;
		Payload->m_Channel = PAYLOAD_PRESS1;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_CH2_MidiChannel)
	{
		//send out pressure
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)Pressure << 5;
		Payload->m_Channel = PAYLOAD_PRESS2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
}

void ActionProgramChange(unsigned char chan,unsigned char patch)
{

}

void ActionPitchWheel(unsigned char chan,unsigned data)
{
	MSG *pMsg;
	if(chan == Settings.m_CH1_MidiChannel)
	{
		//send out pitch bend
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)data >> 3;
		Payload->m_Channel = PAYLOAD_WHEEL2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
	}
	else if (chan == Settings.m_CH2_MidiChannel)
	{
		//send out pitch bend
		pMsg = NewMSG(3);
		PAYLOAD *Payload = (PAYLOAD *)pMsg->Payload;
		Payload->m_Value = (int)data >> 3;
		Payload->m_Channel = PAYLOAD_WHEEL2;
		Payload->m_GateFlag = 0;
		pMsg->MsgCmd = DAC_SETDAC;
		MqPut(pDacMessages,pMsg);
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
			//Command portion of data
			pMp->cmd = (unsigned char)(c & (unsigned char)0xf0);
			// channel portion of data
			pMp->chan = (unsigned char)(c & 0x0f);
			//set state to recieve first data byte
			pMp->state = NOTE0;
		}
		else	//process system commands
		{
			switch(c)
			{
				case SYSEX:	//n bytes defined by command
                   	pMp->state = SYSEX_ID;
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
			}	//end of swtich(c)
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
				switch(pMp->state)
				{
					case SYSEX_ID:
						if(c == 0x7D)	//manufacturers ID
							pMp->state = SYSEX_MODEL;
						else
							pMp->state = SYSEX_IGNORE;
						break;
					case SYSEX_MODEL:
						if(c == 0x10)	//model number
							pMp->state = SYSEX_DATA;
						else
							pMp->state = SYSEX_IGNORE;
						break;
					case SYSEX_DATA:
						ActionSysExData(pMp,c);
						break;
					case SYSEX_IGNORE:
						break;
				}
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


