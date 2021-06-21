/*******************************************************************
** Device Driver for UARTS on ATmega8515
**
** Craeted July 10, 2007
** by Jim Patchell
**
** Written for WinAVR
**
********************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include "rs232.h"
#include "1001037Midi.h"

unsigned volatile InterruptCount;
static IOREC gSerial;



static RREG SAdr = {
	(unsigned char *)&UDR,
	(unsigned char *)&UCSRA,
	(unsigned char *)&UCSRB,
	(unsigned char *)&UCSRC,
	(unsigned char *)&UBRRL,
	(unsigned char *)&UBRRH
};

char RGetC(IOREC *pI)
{
	//------------------------------
	// RGetC
	//		This function gets a
	// byte from the serial port.
	// If the input buffer is empty
	// it will wait for data to
	// arrive.
	//
	// parameters:
	//		pI....pointer to IO record
	// returns:
	//		first byte in buffer
	//------------------------------

	char retval;
	char sr;

	while(pI->m_RxnChar == 0);
	sr = Disable();		//enter critical section
	if(pI->m_RxnChar)	//are there any characters to recieve
	{
		retval = (int)pI->m_pRxBuff[pI->m_RxTail++];	//get character	
		if(pI->m_RxTail == pI->m_RxSize) pI->m_RxTail = 0;	//check tail pointer
		pI->m_RxnChar--;		//decrement the number of chars in buffer
	}
	else
		retval = -1;	//return error
	Enable(sr);	//exit critical section
	return retval;
}


void RPutC(IOREC *pI,char c)
{
	//------------------------------
	// RPutC
	//		This function sends a
	// character out of the serial
	// port.  If the buffer is full,
	// this function will wait until
	// there is room in the buffer.
	//
	// paramters:
	//		pI.....pointer to the IO Record
	//		c......character to send
	//-------------------------------
	char sr;

	sr = Disable();		//enter critical section
	if(pI->m_TxnChar < pI->m_TxSize)	//and room?
	{
		pI->m_pTxBuff[pI->m_TxHead++] = (unsigned char)c;
		if(pI->m_TxHead == pI->m_TxSize) pI->m_TxHead = 0;	//check head pointer
		if(!pI->m_TxnChar)	//if first char
			*pI->regs->pUCSRnB |= BV(UDRIE);	//enable tx interrupts
		pI->m_TxnChar++;		//increment number of chars in buffer
	}
	Enable(sr);	//exit critical section
}

char RStatus(IOREC *pI)
{
	//------------------------------
	// RStatus
	//		This function is used to
	// find out how many characters
	// are waiting in the input 
	// buffer.
	//
	//	parameters:
	//		pI....pointer to IORECord
	//	returns:
	//		number of bytes in buffer.
	//-------------------------------
	return pI->m_RxnChar;	//return number of chars in recieve buffer
}

static unsigned short CalculateBaudRate(long nBR)
{
	//-------------------------------
	//	CalculateBaudRate
	//		This function is used to
	// calculate the value that needs
	// to be stored into the baud rate
	// register.
	//
	// parameters:
	//		nBR....desired buad rate
	// returns:
	//		UBRR value to get that
	//	baud rate based on the clock
	//	frequency.
	//--------------------------------
	return (unsigned short)( ((SYSTEM_CLOCKRATE / nBR) / 16L) - 1   );
}

IOREC *RInit(char *pTb,unsigned char nTSize,char *pRb,unsigned char nRSize,long nBaudRate)
{
	//----------------------------------
	// RInit
	//		This function initializes
	// bothe IOREC struct and UART
	// hardware.
	//
	// parameters:
	//		pTb.....pointer to transmit buffer
	//		nTSize..Transmit buffer size
	//		pRb.....Pointer to recieve buffer
	//		nRSize..Recieve buffer size
	//		nBaudRate.Desired buad rate
	//
	// Returns:
	//		Pointer to the IOREC structure
	//----------------------------------
	gSerial.regs = &SAdr;
	gSerial.m_pTxBuff = pTb;
	gSerial.m_TxnChar = gSerial.m_TxTail =gSerial.m_TxHead = 0;
	gSerial.m_TxSize = nTSize;
	gSerial.m_pRxBuff = pRb;
	gSerial.m_RxnChar = gSerial.m_RxTail = gSerial.m_RxHead = 0;
	gSerial.m_RxSize = nRSize;
	*gSerial.regs->pUCSRnB = 0x00; 	//disable while setting baud rate
	*gSerial.regs->pUCSRnA = 0x00;	//Normal UART Mode (bits 1 and 0)
	*gSerial.regs->pUCSRnC = BV(URSEL) | BV(UCSZ1) | BV(UCSZ0);	//8 bits, 1 Stop Bit, No Parity
	*gSerial.regs->pUBRRL = CalculateBaudRate(nBaudRate);
	*gSerial.regs->pUCSRnB = BV(RXCIE) | BV(RXEN) | BV(TXEN); 	//Enable UART
	
	return &gSerial;
}

//******************************************************************************
// Interrupt service routines for Serial Ports
//******************************************************************************



static void RxIsr(IOREC *pI)
{
	while(*pI->regs->pUCSRnA & BV(RXC))	//while chars availiable
	{
		pI->m_pRxBuff[pI->m_RxHead++] = *pI->regs->pUDR;	//get char from UART
		if(pI->m_RxHead == pI->m_RxSize) pI->m_RxHead = 0;
		pI->m_RxnChar++;	//increment number of chars in buffer
	}
}

static void TxIsr(IOREC *pI)
{
	//------------------------------
	//	TxIsr
	//		This is the Transmit
	// interrupt service routine.
	// when the transmit buffer is
	// empty, this function will
	// disable the transmit interrupt.
	//
	//	parameter:
	//		pI.....pointer to IORECord
	//-------------------------------
	char loop = 1;

	while((*pI->regs->pUCSRnA & BV(UDRE)) && loop)	//while space availiable in TX
	{
		if(pI->m_TxnChar)	//while there are characters
		{
			*pI->regs->pUDR = pI->m_pTxBuff[pI->m_TxTail++];	//stuff char
			if(pI->m_TxTail == pI->m_TxSize) pI->m_TxTail = 0;
			pI->m_TxnChar--;	//decrement number of chars in buffer
		}
		else
		{
			//we have run out of characters...disable interrupt
			*pI->regs->pUCSRnB &= ~(BV(UDRIE));	//disable tx interrupts
			loop = 0;	//terminate loop
		}
	}
}

void USART0_RX_vect(void) __attribute__ ((naked));
void USART0_RX_vect(void)
{
	//--------------------------
	// USART0_RX_vect
	//		This is where we
	// end up when the Recieve
	// interrupt for the uart
	// occures.  This function
	// is "naked", so we need
	// to take care of things
	// like saving the context
	//---------------------------
	SAVE_IRQ();	//save the context
	++InterruptCount;	//incrment counter
	RxIsr(&gSerial);	//call RX IRQ function
	RESTORE_IRQ();	//restore context
}

void USART0_UDRE_vect(void) __attribute__ ((naked));
void USART0_UDRE_vect(void)
{
	//--------------------------
	// USART0_UDRE_vect
	//		This is where we
	// end up when the Transmit
	// interrupt for the uart
	// occures.  This function
	// is "naked", so we need
	// to take care of things
	// like saving the context
	//---------------------------
	SAVE_IRQ();
	++InterruptCount;
	TxIsr(&gSerial);
	RESTORE_IRQ();
}






