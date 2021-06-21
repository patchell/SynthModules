/*******************************************************************************
	Midi.c

	These are the functions that provide the interface to the midi port

*******************************************************************************/

#include <io8515v.h>
#include <macros.h>
#include "smb.h"
#include "midi.h"

#pragma interrupt_handler iTxd:11 
#pragma interrupt_handler iRxd:iv_UART_RX
#pragma interrupt_handler iTimer:iv_TIMER0_OVF

char GateShadow;

typedef struct {
	volatile int head;
	volatile int tail;
	volatile int nchar;
	volatile int size;
}IODESC;

volatile IODESC txdesc;
char txbuff[32];
volatile IODESC rxdesc;
char rxbuff[32];

void InitUart(int baud)
{
	int i;

	UCR |= 0x18;	/*	enable uart rec and xmit	*/
	UBRR = baud;
	txdesc.head = 0;	/*	initialize transmit descriptor	*/
	txdesc.tail = 0;
	txdesc.nchar = 0;
	txdesc.size = 32;
	rxdesc.head = 0;	/*	initialize receiever descriptor	*/
	rxdesc.tail = 0;
	rxdesc.size = 32;
	rxdesc.nchar = 0;
	for(i=0;i<32;++i)
	{
		txbuff[i] = 'o';
		rxbuff[i] = 'i';
	}
}

void Disable(void)		/*	disable interrupts	*/
{
	SREG &= ~0x80;
}

void Enable(void)		/* enable interrupts	*/
{
	SREG |= 0x80;		
}

void EnableRxIRQ(void)	
{
	/**************************
	** Enable Receiver interrupts
	**************************/
	UCR |= 0x80;
}

void DisableRxIRQ(void)
{
	/**************************
	** Disable Receirver interrupts
	**************************/
	UCR &= ~0x80;
}

void EnableTxIRQ(void)
{
	UCR |= 0x20;	/*	enable transmit data register empty interrupt	*/
}

void DisableTxIRQ(void)
{
	UCR &= ~0x20;	/*	disable transmit data register empty interrupt	*/
}

void iRxd(void)
{
	/**************************
	** Interrupt handler for 
	** Receive Interrupts
	**************************/
	char c = UDR;	/*	read data from receive data reg	*/
	if(rxdesc.nchar < rxdesc.size)	/*	is there space to put char?	*/
	{
		rxbuff[rxdesc.head++] = c;	/*	put character into buffer	*/
		if(rxdesc.head == rxdesc.size) rxdesc.head = 0;	/*	wrap head pointer	*/
		rxdesc.nchar++;	/*	increment character count	*/
	}	/*	otherwise, just drop character	*/
}

void iTxd(void)		/* interrupt handler for uart	*/
{
	char c;

	c = (char)txbuff[txdesc.tail++];		/*	get character from buffer	*/
	--txdesc.nchar;						/*	one less character to send	*/
	if(txdesc.nchar == 0)				/*	is xmit buffer empty?	*/				
		DisableTxIRQ();					/*	stop transmitting data	*/
	if(txdesc.tail == txdesc.size) txdesc.tail = 0;	/* wrap tail pointer	*/
	UDR = c;
}

int GetC(void)
{
	/*********************************
	** Get a character from the UART
	** If there is no character, wait
	*********************************/
	int c;

	while(rxdesc.nchar == 0);	/*	wait for character to apear in buffer	*/
	Disable();			/*	disable interrupts	*/
	c = (int)rxbuff[rxdesc.tail++];		/*	get character from buffer	*/
	if(rxdesc.tail == rxdesc.size) rxdesc.tail = 0;	/*	wrap tail pointer	*/
	rxdesc.nchar--;	/*	decrement number of chars in buffer	*/
	Enable();
	return c;	/*	return fetched character	*/	
}

void PutC(int i)
{
	while(txdesc.nchar == txdesc.size);	/*	pend on buffer full	*/
	Disable();	/*	Disable interrupts	*/
	txbuff[txdesc.head++] = (char)i;	/*	put data into buffer	*/
	if(txdesc.head == txdesc.size) txdesc.head = 0;	/*	wrap head pointer	*/
	if(txdesc.nchar == 0)	/*	first char in buff?	*/
		EnableTxIRQ();		/*	start transmit interrupt	*/
	txdesc.nchar++;
	Enable();	/*	enable interrupts	*/	
}

//--------------------------------------------------------------------------
// Timer STuff...
//--------------------------------------------------------------------------

unsigned char Counter;
unsigned char CRV;

void iTimer(void)
{
	//-----------------------------------
	//timer interrupt handler
	//-----------------------------------
	TCNT0 = ~31;
	if(--Counter == 0)
	{
		GateShadow ^= 0x02;
		LED_PORT = ~GateShadow;
		GATE_PORT = GateShadow;
		Counter = CRV;
	}
}

void EnableTimerIrq(void)
{
	TIMSK |= 0x02;	//enable timer interrupt
}

void DisableTimerIrq(void)
{
	TIMSK &= ~0x02;	//disable timer interrupt
}

void InitTimer(void)
{
	TCCR0 = 5;	//system clock divided by 1024
	TCNT0 = ~31;
	Counter = 31;
	CRV = 31;
}


void Delay()
{
	unsigned char a, b;

	for (a = 1; a; a++)
		for (b = 1; b; b++);
}

enum {IDLE,NOTE0,NOTE1};

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


#define MIDI_CLOCK	0x80
#define MIDI_START	0x40
#define MIDI_RESET	0x20
#define MIDI_GATE	0x01

main()
{
	int currentnote,nextnote;
	char c;
	char cmd;
	char chan;
	char state;
	int v;

	InitSPI();		/*	initialize the SPI port	*/
	InitTimer();	//initialize real clock timer
	InitUart(BAUD_MIDI);
	EnableRxIRQ();	/*	enable receive interrupt	*/
	EnableTimerIrq();
	GateShadow = 0;
	GATE_PORT = GateShadow;	/*	set all outputs to zero	*/
	LED_PORT = ~GateShadow;
	Enable();		/*	enable global interrupts	*/
	
	while(1)
	{
		c = GetC();
		if(c & 0x080)	//is it a command?
		{
			if(c < 0x0f0)
			{
				//process this stuff, dispose of everything else
				cmd = (char)(c & 0xf0);
				chan = (char)(c & 0x0f);
				if(cmd == NOTEON)
					state = NOTE0;
			}
			else
			{
				switch(c)
				{
					case SYSEX:
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
						break;
					case SYSRTCLOCK:
						Disable();
						GateShadow ^= MIDI_CLOCK;	/*	toggle these bits	*/
						GATE_PORT = GateShadow;
						LED_PORT = ~GateShadow;
						Enable();
						break;
					case SYSRTUNDEF:
						break;
					case SYSRTSTART:
						Disable();
						GateShadow |= MIDI_START;
						GateShadow &= ~MIDI_RESET;
						GATE_PORT = GateShadow;
						LED_PORT = ~GateShadow;
						Enable();				
						break;
					case SYSRTCONTINUE:
						break;
					case SYSRTSTOP:
						Disable();
						GateShadow &= ~MIDI_START;
						GATE_PORT = GateShadow;
						LED_PORT = ~GateShadow;
						Enable();		
						break;
					case SYSRTUNDEF1:
						break;
					case SYSRTACTIVESEN:
						break;
					case SYSRTRESET:
						Disable();
						GateShadow &= ~MIDI_START;
						GateShadow |= MIDI_RESET;
						GATE_PORT = GateShadow;
						LED_PORT = ~GateShadow;
						Enable();		
						break;
				}	//end of swtich(c)
			}	//end of if(c < 0xf0)

		}
		else	// if(c & 0x080)
		{
			switch(cmd)
			{
				case NOTEOFF:
					switch(state)
					{
						case NOTE0:
							nextnote = (int)c << 5;
							state = NOTE1;
							break;
						case NOTE1:
							if(nextnote == currentnote)
							{
								Disable();
								GateShadow &= ~MIDI_GATE;
								GATE_PORT = GateShadow;
								LED_PORT = ~GateShadow;
								Enable();
							}
							state = NOTE0;
							break;
					}
					break;
				case NOTEON:
					switch(state)
					{
						case NOTE0:
							nextnote = (int)c << 5;
							state = NOTE1;
							break;
						case NOTE1:
							Disable();
							if(c > 0)
							{
								currentnote = nextnote;
								SendData(currentnote,0);
								if(GateShadow & MIDI_GATE)	//is gate already set?
								{
									GateShadow &= ~MIDI_GATE;	//retrigger gate
									GATE_PORT = GateShadow;
									LED_PORT = ~GateShadow;
								}
								GateShadow |= MIDI_GATE;
							}
							else
							{
								if(currentnote == nextnote)
								{
									GateShadow &= ~MIDI_GATE;
								}
							}
							GATE_PORT = GateShadow;
							LED_PORT = ~GateShadow;
							Enable();
							state = NOTE0;
							break;
						default:
							break;
					}
					break;
				case NOTEPRES:	//note pressure
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
				case CHANPRES:		//channel pressure
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
				case WHEEL:			//pitch wheel change
					switch(state)
					{
						case NOTE0:
							v = ((int)c);
							state = NOTE1;
							break;
						case NOTE1:
							v |= ((int)c)<<7;
							v >>= 2;	//12 bits;
			//				v ^= 0x0800;
							SendData(v,1);
							state = NOTE0;
							break;
					}
					break;
				case PATCH:			//patch change
					state = NOTE0;
					break;
			}	//end of switch(cmd)
		}	//end of if(c & 0x080)

	}	//end of while(1) loop
	return 0;
}