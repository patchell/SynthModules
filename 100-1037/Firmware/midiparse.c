#include "MidiParse.h"

static char state;
static unsigned SysexCount;
static char cmd,chan;
static unsigned nextnote,currentnote;
static unsigned v;
char DefMidiChan;

//----------------------------
// State defines
//----------------------------

#define IDLE	0
#define NOTE0	1
#define NOTE1	2
#define SYSEX_STATE	3


int ParseMidi(char c)
{
//	unsigned long pitch;

	if(c & 0x080)	//is it a command?
	{
		if(c < 0x0f0)
		{
			//process this stuff, dispose of everything else
			cmd = (char)(c & 0xf0);
			chan = (char)(c & 0x0f);
			state = NOTE0;
		}
		else
		{
			switch(c)
			{
				case SYSEX:
                   	state = SYSEX_STATE;
                    SysexCount = 0;
                    cmd = SYSEX;
					break;
				case SYSCOMUNDEF:
					break;
				case SYSCOMSONGPOS:
					break;
				case SYSCOMSONGSEL:
					break;
				case SYSCOMUNDEF1:
					break;
				case SYSCOMUNDEF2:
					break;
				case SYSCOMTUNEREQ:
					break;
				case SYSEXEND:
                   	state = IDLE;
                    cmd = SYSEXEND;
//                	ParseSysEx(SysexCount);
                    SysexCount = 0;
					break;
				case SYSRTCLOCK:	//Midi Clock
					break;
				case SYSRTUNDEF:
					break;
				case SYSRTSTART:	//Midi Start
					break;
				case SYSRTCONTINUE:	//Midi Continue
					break;
				case SYSRTSTOP:		//Midi Stop
					break;
				case SYSRTUNDEF1:
					break;
				case SYSRTACTIVESEN://Active Sensing
					break;
				case SYSRTRESET:	//Midi reset
					break;
			}	//end of swtich(c)
		}	//end of if(c < 0xf0)
	}
	else	// if(c & 0x080)	the data must be data
	{
		/*	we must handle the case of running status...so we need to keep track of
		**  which data byte we are on
		*/
		switch(cmd)	//what was the last command?
		{
			case NOTEOFF:	//last command was note off
				switch(state)
				{
					case NOTE0:
						nextnote = ((int)c);
						state = NOTE1;
						break;
					case NOTE1:
                          	if(DefMidiChan == chan)
                            {
								currentnote = nextnote;
//								NoteOff(nextnote,c);
                            }
						state = NOTE0;
						break;
				}
				break;
			case NOTEON:	// last command was note on
				switch(state)
				{
					case NOTE0:
						nextnote = ((int)c);
						state = NOTE1;
						break;
					case NOTE1:
						if(c > 0)
						{
                           	if(DefMidiChan == chan)
                            {
								currentnote = nextnote;
//								NoteOn(nextnote,c);
							}                                 
						}
						else
						{
   	                       	if(DefMidiChan == chan)
							{
//								NoteOff(nextnote,c);
							}
						}
						state = NOTE0;
						break;
					default:
						break;
				}
				break;
			case NOTEPRES:	// last command was note pressure
				switch(state)
				{
					case NOTE0:
						state = NOTE1;
						break;
					case NOTE1:
						state = NOTE0;
						break;
				}
				break;
			case CHANPRES:		//last command was channel pressure
				break;
			case CONTROL:			//control change
				switch(state)
				{
					case NOTE0:
						state = NOTE1;
						break;
					case NOTE1:
						state = NOTE0;
						break;
				}
				break;
			case WHEEL:			//last command was pitch wheel change
				switch(state)
				{
					case NOTE0:
						v = ((int)c);
						state = NOTE1;
						break;
					case NOTE1:
						v |= ((int)c)<<7;
						v <<= 2;	//12 bits;
						state = NOTE0;
						break;
				}
				break;
			case PATCH:			//last command was patch change
				state = NOTE0;
				break;
			case SYSEX:
//               	if(SysexCount < 80)	//don't overwrite buffer
//               		SysExBuf[SysexCount++] = c;
               	break;
		}	//end of switch(cmd)
	}	//end of if(c & 0x080)
	return 0;
}


