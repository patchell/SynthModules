/***************************************************************
	MidiParse.H	

	This is the header file for the MIDI driver interface

	Open(void)		initializes midi port
	GetC(void)		gets character from midi buffer
	PutC(int c)	puts a character to midi buffer
	StatusIn(void)	gets number of chars in buffer
	StatusOut(void)	gets number of chars left to transmit

	This code is copyright(c) 2002 by Jim Patchell
	However, anyone is free to use this as they see fit, as long
	as this text remains in the source code
*******************************************************************************/

#ifndef MIDIPARSE__H
#define MIDIPARSE__H


extern int ParseMidi(char c);	/*	parse a character in a midi stream	*/


//----------------------------------------
// Gate Flags
//----------------------------------------

#define GATEFLAG_GATEON		1
#define GATEFLAG_GATEOFF	2
#define GATEFLAG_GATEIDLE	0

//------------------------------------------
// Midi Defines
//------------------------------------------

#define SYSEX			0xf0
#define SYSCOMUNDEF		0xf1
#define SYSCOMSONGPOS	0xf2
#define SYSCOMSONGSEL	0xf3
#define SYSCOMUNDEF1	0xf4
#define SYSCOMUNDEF2	0xf5
#define SYSCOMTUNEREQ	0xf6
#define SYSEXEND		0xf7
#define SYSRTCLOCK		0xf8
#define SYSRTUNDEF		0xf9
#define SYSRTSTART		0xfa
#define SYSRTCONTINUE	0xfb
#define SYSRTSTOP		0xfc
#define SYSRTUNDEF1		0xfd
#define SYSRTACTIVESEN	0xfe
#define SYSRTRESET		0xff

#define NOTEON	0x90
#define NOTEOFF	0x80
#define NOTEPRES	0xa0		//note pressure
#define CHANPRES	0xb0		//channel pressure
#define CONTROL	0xd0			//control change
#define WHEEL	0xe0			//pitch wheel change
#define PATCH	0xc0			//patch change


//----------------------------------------
// Sysex commands
//----------------------------------------

#define SYSEX_CMD_CHANNEL		0x01
#endif
