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
#include "MidiParse.h"
#include "Fifo.h"
#include "2001017.h"
#include "system.h"
#include "Dac.h"

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
}
//---------------------------------
// Action Functions for Midi Parser
//---------------------------------

void ActionSysEx(void)
{
}

void ActionSysExData(unsigned char c)
{

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

void ActionSysExEnd(void)
{

}

void ActionSysRTClock(void)
{

}

void ActionSysRTUndef(void)
{

}

void ActionSysRTStart(void)
{

}

void ActionSysRTContinue(void)
{

}

void ActionSysRTStop(void)
{

}

void ActionSysRTUndef1(void)
{

}

void ActionSysRTActiveSense(void)
{

}

void ActionSysRTReset(void)
{

}

void ActionNoteOff(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	if(chan == MidiChan)
	{
		if(Note == CurrentNote)
		{
			PutFifo(Note,DAC_PITCH | BIT(FIFO_CHANGATEFLAGBIT_OFF));
			PutFifo(Vel,DAC_VELOCITY);
			GateState = GATESTATE_OFF;
		}
	}
}

void ActionNoteOn(unsigned char chan,unsigned char Note, unsigned char Vel)
{
	if(chan == MidiChan)
	{
		if(GateState == GATESTATE_ON)
		{
			//------------------------
			// Turn Off Current Note
			//------------------------
			PutFifo(CurrentNote,DAC_PITCH | BIT(FIFO_CHANGATEFLAGBIT_OFF));
		}
		PutFifo(Note,DAC_PITCH | BIT(FIFO_CHANGATEFLAGBIT_ON));
		PutFifo(Vel,DAC_VELOCITY);
		GateState = GATESTATE_ON;
		CurrentNote = Note;
	}
}

void ActionAfterTouch(unsigned char chan,unsigned char Note, unsigned char Pressure)
{

}

void ActionChanPressure(unsigned char chan, unsigned char Pressure)
{
	if(chan == MidiChan)
	{
		PutFifo(Pressure,DAC_CTL1);
	}
}

void ActionProgramChange(unsigned char chan,unsigned char patch)
{

}

void ActionPitchWheel(unsigned char chan,unsigned data)
{
	if(chan == MidiChan)
		PutFifo(data,DAC_WHEEL);
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
					ActionSysEx();
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
					ActionSysExEnd();
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
				ActionSysExData(c);
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


