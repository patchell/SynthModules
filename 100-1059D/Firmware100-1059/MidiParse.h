/*
 * MidiParse.h
 *
 * Created: 7/20/2018 12:48:34 PM
 *  Author: Jimmy
 */ 


#ifndef MIDIPARSE_H_
#define MIDIPARSE_H_


typedef struct _midiparse_d{
	// local data for parse state machine
	unsigned char DefMidiChan;	//midi channel we respond to
	unsigned char cmd;			//curreent commnad being operated on
	unsigned char chan;			//current channel being recieved
	unsigned char nextnote;		//next note to be processed
	unsigned char currentnote;	//current note being processed
	unsigned char state;		//parser state
	unsigned int SysexCount;	//number of SysEX data bytes to recive
	char *m_pSysExBuff;			//buffer to put sysex data
	unsigned int v;				//temporary variable
}MIDIPARSE_D;


extern int ParseMidi(MIDIPARSE_D *pMD,unsigned char c);	/*	parse a character in a midi stream	*/
extern MIDIPARSE_D *newMidiParseDescriptor(void);
extern void InitMidiParseDesc(MIDIPARSE_D *pMD);
extern MIDIPARSE_D MidiParseDesc;

#define DEFAULT_CHANNEL			0

//----------------------------
// State defines
//----------------------------

#define IDLE			(0)
#define NOTE0			(1)
#define NOTE1			(2)
#define SYSEX_ID		(5)
#define SYSEX_MODEL		(6)
#define SYSEX_DATA		(7)
#define SYSEX_IGNORE	(8)
#define SYSCOM_STATE	(4)

//------------------------------
// Note ON and OFF states
//------------------------------

#define GATESTATE_ON	1
#define GATESTATE_OFF	0

//------------------------------------------
// Midi Defines
//------------------------------------------

#define SYSEX						(0xf0)
#define SYSCOM_MTCQUARTERFRAME		(0xf1)
#define SYSCOMSONGPOS				(0xf2)
#define SYSCOMSONGSEL				(0xf3)
#define SYSCOMUNDEF1				(0xf4)
#define SYSCOMUNDEF2				(0xf5)
#define SYSCOMTUNEREQ				(0xf6)
#define SYSEXEND					(0xf7)
/*
** Real time Messages
*/
#define SYSRTCLOCK					(0xf8)
#define SYSRTUNDEF					(0xf9)
#define SYSRTSTART					(0xfa)
#define SYSRTCONTINUE				(0xfb)
#define SYSRTSTOP					(0xfc)
#define SYSRTUNDEF1					(0xfd)
#define SYSRTACTIVESEN				(0xfe)
#define SYSRTRESET					(0xff)

#define NOTEOFF		(0x80)
#define NOTEON		(0x90)
#define NOTEPRES	(0xa0)		//note pressure
#define CHANPRES	(0xb0)		//channel pressure
#define PATCH		(0xc0)		//patch change
#define CONTROL		(0xd0)		//control change
#define WHEEL		(0xe0)		//pitch wheel change


//----------------------------------------
// Sysex commands
//----------------------------------------
#define SYSEX_CMD_CHANNEL		(0x01)
#define SYSEX_CMD_DUMP			(0x02)
#define SYSEX_CMD_GETCHANNEL	(0x03)
#define SYSEX_CMD_GETEVENT		(0x04)
#define SYSEX_CMD_SETEVENT		(0x05)
#define SYSEX_CMD_ADDEVENT		(0x06)
#define SYSEX_CMD_DELEVENT		(0x07)
#define SYSEX_CMD_SEQCREATE		(0x08)
#define SYSEX_CMD_GETNEVENTS	(0x09)
#define SYSEX_CMD_STEP			(0x0a)

#define SYSEX_CMD_CHANNEL_CH1		(0x0b)
#define SYSEX_CMD_CHANNEL_CH2		(0x0c)
#define SYSEX_CMD_CHANNEL_TRIG		(0x0d)
#define SYSEX_CMD_GETCHANNEL_CH1	(0x0e)
#define SYSEX_CMD_GETCHANNEL_CH2	(0x0f)
#define SYSEX_CMD_GETCHANNEL_TRIG	(0x10)
#define SYSEX_CMD_SEQ_LOAD			(0x11)
#define SYSEX_CMD_SEQ_SAVE			(0x12)

//----------------------------------------
// Sysex commands
//----------------------------------------


//------------------------------
// SYSEX format
//-----------------------------

#define SYSEX_CMD		0	//first byte is the command


#endif /* MIDIPARSE_H_ */