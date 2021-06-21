/*******************************************************************************
	Midi.c

	These are the functions that provide the interface to the midi port

*******************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include "midi.h"


//--------------------------------------------------------------------------
// Serial Stuff
//--------------------------------------------------------------------------

char RXbuff[INBUFF_SIZE];
char TXbuff[OUTBUFF_SIZE];
MIDI_D MidiIN,MidiOUT;


void InitUart(int baud)
{
	int i;

	UCR |= BIT(RXEN) | BIT(TXEN);	/*	enable uart rec and xmit	*/
	UBRR = baud;
	MidiIN.buff = RXbuff;
	MidiIN.head = 0;
	MidiIN.tail = 0;
	MidiIN.size = INBUFF_SIZE;
	MidiIN.nChar = 0;
	MidiOut.buff = TXbuff;
	MidiOut.head = 0;
	MidiOut.tail = 0;
	MidiOut.size = OUTBUFF_SIZE;
	MidiOut.nChar = 0;
}

void EnableRxIRQ(void)	
{
	/**************************
	** Enable Receiver interrupts
	**************************/
	UCR |= BIT(RXCIE);
}

void DisableRxIRQ(void)
{
	/**************************
	** Disable Receirver interrupts
	**************************/
	UCR &= ~BIT(RXCIE);
}

void EnableTxIRQ(unsigned char sr)
{
	UCR |= sr;	/*	enable transmit data register empty interrupt	*/
}

unsigned char DisableTxIRQ(void)
{
	unsigned char sr = UCR & BIT(UDRIE);
	UCR &= ~BIT(UDRIE);	/*	disable transmit data register empty interrupt	*/
	return sr;
}

//***********************************************
// Uart RXD interrupt routine (MIDI in)
// This is the vector we use for GetM
//***********************************************

void UART_RX_vect(void) __attribute__ ((naked));
void UART_RX_vect(void)
{
	SAVE_IRQ();
	if(MidiIN.nChar < MidiIN.size)	/*	is there space to put char?	*/
	{
		MidiIN.buff[MidiIN.head++] = UDR;	/*	put character into buffer	*/
		if(MidiIN.head == MidiIN.size) MidiIN.head = 0;	/*	wrap head pointer	*/
		MidiIN.nChar++;	/*	increment character count	*/
	}	/*	otherwise, just drop character	*/
	RESTURE_IRQ();
}

//***********************************************
// UART TX Data Register Empty (Midi OUT) Interrupt
// This is the vector we use for PutM
//***********************************************

void UART_UDRE_vect(void) __attribute__ ((naked));
void UART_UDRE_vect(void)
{
	SAVE_IRQ();
	UDR = (char)MidiOUT.buff[MidiOUT.tail++];		/*	get character from buffer	*/
	if(MidiOUT.tail == MidiOUT.size) MidiOUT.tail = 0;	/* wrap tail pointer	*/
	--MidiOUT.nChar;						/*	one less character to send	*/
	if(MidiOUT.nChar == 0)				/*	is xmit buffer empty?	*/				
		DisableTxIRQ();					/*	stop transmitting data	*/
	RESTURE_IRQ();
}

unsigned char GetM(void)
{
	/*********************************
	** Get a character from the UART
	*********************************/
	unsigned char c;

	DisableRxIRQ();			/*	disable interrupts	*/
	c = MidiIN.buff[MidiIN.tail++];		/*	get character from buffer	*/
	if(MidiIN.tail == MidiIN.size) MidiIN.tail = 0;	/*	wrap tail pointer	*/
	MidiIN.nChar--;	/*	decrement number of chars in buffer	*/
	EnableRxIRQ();
	return c;	/*	return fetched character	*/	
}

void PutC(unsigned char c)
{
	unsigned char sr;

	while(MidiOUT.nChar == MidiOUT.size);	/*	pend on buffer full	*/
	sr = DisableTxIRQ();	/*	Disable interrupts	*/
	MidiOUT.buff[MidiOUT.head++] = c;	/*	put data into buffer	*/
	if(MidiOUT.head == MidiOUT.size) MidiOUT.head = 0;	/*	wrap head pointer	*/
	if(MidiOUT.nChar == 0)	/*	first char in buff?	*/
		EnableTxIRQ(BIT(UDRIE));		/*	start transmit interrupt	*/
	txdesc.nchar++;
	EnableTxIRQ(sr);	/*	enable interrupts	*/	
}

void iTimer(void)
{
	//-----------------------------------
	//timer interrupt handler
	//-----------------------------------
	TCNT0 = ~31;
	if(--Counter == 0)
	{
//		GateShadow ^= 0x02;
//		LED_PORT = ~GateShadow;
//		GATE_PORT = GateShadow;
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

void ParseSysEx(int count)
{
	//--------------------------------------------------------------------------
    // This function parses the Sysex buffer and determines what it is that
    // needs to be done
    //
    // parameter:
    //	count.........number of bytes in SysExBuf
    //
    // For now, I will be using 0x7d as the Midi ID (developement ID)
    // A sysex packet will contain the following:
    // 0xf0		--sysex command
    // 0x7d		--development ID	0
    // 0x??		--Command			1
    // 0x??		--Data count		2
    // 0x??		--start of data		3
    // 0x??		--end of data		3 + Data Count
    // 0xf7		--end of sysex command
    // now the buffer will contain everything except for the sysex command
    //
    // Commands (byte 3 is packet, byte 2 in buffer)
    //
    // SET_CHANNEL
    // DO_DUMP
    // GET_CHANNEL
    //--------------------------------------------------------------------------
//    if(SysExBuf[0] == 0x7d)	//is this my ID?
    {
    	switch(SysExBuf[1])	//which command
        {
        	case SYSEX_CMD_CHANNEL:
            	DefMidiChan = SysExBuf[3];
                EEPROM_WRITE((int)&DefaultMidiChannel,DefMidiChan);
            	break;
			case SYSEX_CMD_DUMP:
				break;
			case SYSEX_CMD_GETCHANNEL:
            	PutC(SYSEX);
                PutC(0x7d);		//manufactures ID
                PutC(SYSEX_CMD_GETCHANNEL);
                PutC(1);		//data count, 1 byte
                PutC(DefMidiChan);
                PutC(SYSEXEND);
            	break;               
        }
    }
}




