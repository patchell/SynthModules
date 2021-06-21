/*******************************************************************
** Device Driver for UARTS on ATmega1281/1284/2561
**
** Created July 10, 2007
** by Jim Patchell
**
**	This is a special version as the
**	functions for GetC and Read have an
**	Added parameter for timeout
********************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include "fcntl.h"
#include "system.h"
#include "rs232.h"
#include "task.h"
#include "cio.h"

static void InitPort(SERIAL *pS,unsigned short nTSize,unsigned short nRSize, unsigned short nPort,long nBaudRate);
static int ROpen(IOCB *pIOCB);
static int RGetC(IOCB *pIOCB,int Timeout);
static int RPutC(IOCB *pIOCB,int c);
static int RWrite(IOCB *pIOCB,char *b,int l);
static int RStatus(IOCB *pIOCB,int m);
static int RXIO(IOCB *pIOCB,int cmd,void *pP);
static unsigned short CalculateBaudRate(long nBR);

static int RSerrors;

static SERIAL *gSerial[RS232_N_PORTS];	//need these for interrupt service routines

static H_JVEC RJump = {
	ROpen,		//0		Open
	0,			//1		Close
	RGetC,		//2		GetC
	0,			//3		Read
	RPutC,		//4		PutC
	RWrite,		//5		Write
	RStatus,	//6		Status
	RXIO,		//7		XIO
	RInit		//8		Init
};


static RREG SAdr[2] = {
	{(unsigned char *)&UDR0,(unsigned char *)&UCSR0A,(unsigned char *)&UCSR0B,(unsigned char *)&UCSR0C,(unsigned short *)&UBRR0},
	{(unsigned char *)&UDR1,(unsigned char *)&UCSR1A,(unsigned char *)&UCSR1B,(unsigned char *)&UCSR1C,(unsigned short *)&UBRR1},
};

/**************************************************
	ROpen
		This is the function that gets called by
		CioOpen when attempting to open a
		serial device.
	parameters:
		pIOCB.....pointer to the IO control block
	return value:
		returns 0 on success
		returns negative on fail
**************************************************/

static int ROpen(IOCB *pIOCB)
{
	int rV = -1;

	if(pIOCB->devnum < RS232_N_PORTS)
	{
		pIOCB->p = (void *)malloc(sizeof(SERIAL));	//allocate space for serial control block
		InitPort((SERIAL *)pIOCB->p,RS232_DEF_T_BUFF_SIZE,RS232_DEF_R_BUFF_SIZE,pIOCB->devnum,RS232_DEF_BAUDRATE);
		gSerial[pIOCB->devnum] = (SERIAL *)pIOCB->p;
		rV = 0;	//success
	}
	return rV;
}

/************************************
	RGetC
		This is the function that gets
		called when CioGetC is called
	parameters:
		pIOCB...pointer to IO control block
		to......timeout
	return value:
		returns a character from the buffer
		OR -1 on fail (no chars)
************************************/

static int RGetC(IOCB *pIOCB,int to)
{
	int retval;
	char sr;
	SERIAL *pI = (SERIAL *)pIOCB->p;

	retval = PendSemaphore(pI->Rx.pSem,to);
	//------------------------------------
	// If PendSemaphore returns an error
	// then just return
	//------------------------------------
	if(retval == 0)
	{
		sr = Disable();		//enter critical section
		if(pI->Rx.nChar)	//are there any characters to receive
		{
			retval = (int)pI->Rx.buff[pI->Rx.tail++];	//get character	
			if(pI->Rx.tail == pI->Rx.size) pI->Rx.tail = 0;	//check tail pointer
			pI->Rx.nChar--;		//decrement the number of chars in buffer
		}
		else
			retval = -1;	//return error
		Enable(sr);	//exit critical section
	}
	return retval;
}

/*******************************************
	RPutC
		This is the function that gets
		called when CioPutC is used
	parameters:
		pIOCB...pointer to IO control block
		c.......character to write to device
	return value:
		returns 0
*******************************************/
static int RPutC(IOCB *pIOCB,int c)
{
	char sr;
	SERIAL *pI = (SERIAL *)pIOCB->p;

	if(pI->Tx.nChar == pI->Tx.size)
		PendSemaphore(pI->Tx.pSem,0);	//wait for buffer to free up
	sr = Disable();		//enter critical section
	if(pI->Tx.nChar < pI->Tx.size)	//and room?
	{
		pI->Tx.buff[pI->Tx.head++] = (unsigned char)c;
		if(pI->Tx.head == pI->Tx.size) pI->Tx.head = 0;	//check head pointer
		if(!pI->Tx.nChar)	//if first char
			*pI->regs->pUCSRnB |= BIT(UDRIE0);	//enable tx interrupts
		pI->Tx.nChar++;		//increment number of chars in buffer
	}
	else
		pI->Tx.Errors++;		//increment buffer overrun errors
	Enable(sr);	//exit critical section
	return 0;
}

/********************************************
	RWrite
		This is the function that gets called
		when CioWrite is called
	parameters:
		pIOCB...pointer to IO control block
		b.......buffer of data to write
		l.......size of buffer in bytes
	return Value:
		returns number of bytes written
********************************************/

static int RWrite(IOCB *pIOCB,char *b,int l)
{
	int i = 0;
	SERIAL *pI = (SERIAL *)pIOCB->p;

	PendSemaphore(pI->Tx.pSemBlkr,0);	//lock access
	for(i=0;i<l;++i)
	{
		if(b[i] == '\n')
			if(pIOCB->mode & FCNTL_TEXT)
				RPutC(pIOCB,'\r');
		RPutC(pIOCB,b[i]);	//output characters
	}
	PostSemaphore(pI->Tx.pSemBlkr,0);	//release lock
	return i;
}

/*******************************************************
	RStatus
		This is the function that gets called when
		CioStatus is called.
	Parameters:
		pIOCB...pointer to IO Control Block
		m.......Status Command
	Return Value:
		returns result of status operation
*******************************************************/
static int RStatus(IOCB *pIOCB,int m)
{
	int rv=0;

	SERIAL *pI = (SERIAL *)pIOCB->p;
	switch(m)
	{
		case RS232_STAT_NREC:
			rv = pI->Rx.nChar;
			break;
		case RS232_STAT_TMT:
			if(pI->Tx.nChar == 0) rv = 1;
			else rv = 0;
			break;
	}
	return rv;	//return number of chars in receive buffer
}

/****************************************************
	RXIO
		This is the function that gets called
		when CioXIO is called.
	parameters:
		pIOCB....pointer to IO control block
		cmd......Operation to be performed
		pP.......pointer to aux data
	return value
		depends on operation
			cmd=RS232_XIO_SETBAUD:returns 0
****************************************************/
static int RXIO(IOCB *pIOCB,int cmd,void *pP)
{
	long *pL;
	SERIAL *pI = (SERIAL *)pIOCB->p;

	int rv = 0;
	switch(cmd)
	{
		case RS232_XIO_SETBAUD:
			pL = (long *)pP;
			*pI->regs->pUBRR = CalculateBaudRate(*pL);
			break;
	}
	return rv;
}

/****************************************************
	CalculateBaudRate
		This function calculates the value that
		needs to go into the baud rate generator
		register
	parameters:
		nBR......desired baud rate
	return value:
		returns value to put into baud rate generator
****************************************************/
static unsigned short CalculateBaudRate(long nBR)
{
	return (unsigned short)( ((SYSTEM_CLOCKRATE / nBR) / 16L) - 1   );
}

static char *PNames[2] = {
	"RX0",
	"RX1"
};

static char *TNames[2] = {
	"TX0",
	"TX1"
};

/************************************************
	InitPort
		Initializes the hardware ports for the
		serial devices
	parameters:
		pS.....pointer to serial descriptor
		nTSize.........size of transmit buffer
		nRSize.........size of receive buffer
		nPort..........port number to initialize
		nBaudRate......baud rate of port
************************************************/
static void InitPort(SERIAL *pS,unsigned short nTSize,unsigned short nRSize, unsigned short nPort,long nBaudRate)
{
	int i;

	pS->regs = &SAdr[nPort];
	pS->Tx.buff = malloc(nTSize);
	for(i=0;i<nTSize;++i)
		pS->Tx.buff[i] = 0;
	pS->Tx.Errors = 0;
	pS->Tx.head = 0;
	pS->Tx.tail = 0;
	pS->Tx.nChar = 0;
	pS->Tx.size = nTSize;
	pS->Tx.pSemBlkr = NewSemaphore(1,SEMAPHORE_MODE_BLOCKING,TNames[nPort]);
	pS->Tx.pSem = NewSemaphore(0,SEMAPHORE_MODE_TIMEOUT,TNames[nPort]);
	pS->Rx.Errors = 0;
	pS->Rx.buff = malloc(nRSize);
	pS->Rx.head = 0;
	pS->Rx.tail = 0;
	pS->Rx.nChar = 0;
	pS->Rx.size = nRSize;
	for(i=0;i<nRSize;++i)
		pS->Rx.buff[i] = 0;
	pS->Rx.pSem = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,PNames[nPort]);
	*pS->regs->pUCSRnB = 0x00; 	//disable while setting baud rate
	*pS->regs->pUCSRnA = 0x00;	//Normal UART Mode (bits 1 and 0)
	*pS->regs->pUCSRnC = BIT(UCSZ01) | BIT(UCSZ00);	//8 bits, 1 Stop Bit, No Parity
	*pS->regs->pUBRR = CalculateBaudRate(nBaudRate);
	*pS->regs->pUCSRnB = BIT(RXCIE0) | BIT(RXEN0) | BIT(TXEN0); 	//Enable UART
}

/***************************************************
	RInit
		This function is called to add this device
		to the Device Table
	return value:
		returns 0
***************************************************/
int RInit(void)
{
	CioAddHandler("COM",&RJump);
	return 0;
}

//******************************************************************************
// Interrupt service routines for Serial Ports
//******************************************************************************

/************************************************************
	RxIsr
		This function handles interrupts for
		in coming serial data
	parameters:
		pI.....pointer to serial descriptor
************************************************************/

static void RxIsr(SERIAL *pI)
{
	while(*pI->regs->pUCSRnA & BIT(RXC0))	//while chars available
	{
		if(*pI->regs->pUCSRnA & (BIT(DOR0) ) )  RSerrors++;
		pI->Rx.buff[pI->Rx.head++] = *pI->regs->pUDR;	//get char from UART
		if(pI->Rx.head == pI->Rx.size) pI->Rx.head = 0;
		pI->Rx.nChar++;	//increment number of chars in buffer
		PostSemaphore(pI->Rx.pSem,0);
	}
}

/*****************************************************
	TxIsr
		This is the function that handles Interrupts
		for out going data
	parameters:
		pI....pointer to serial descriptor
*****************************************************/

static void TxIsr(SERIAL *pI)
{
	char loop = 1;

	while((*pI->regs->pUCSRnA & BIT(UDRE0)) && loop)	//while space available in TX
	{
		if(pI->Tx.nChar == 128) PostSemaphore(pI->Tx.pSem,0);	//buffer somewhat empty now
		if(pI->Tx.nChar)	//while there are characters
		{
			*pI->regs->pUDR = pI->Tx.buff[pI->Tx.tail++];	//stuff char
			if(pI->Tx.tail == pI->Tx.size) pI->Tx.tail = 0;
			pI->Tx.nChar--;	//decrement number of chars in buffer
		}
		else
		{
			//we have run out of characters...disable interrupt
			*pI->regs->pUCSRnB &= ~(BIT(UDRIE0));	//disable tx interrupts
			loop = 0;	//terminate loop
		}
	}
}

void USART0_RX_vect(void) __attribute__ ((naked));
void USART0_RX_vect(void)
{
	SAVE_IRQ();
	++InterruptCount;
	RxIsr(gSerial[0]);
	ExitInterrupt();
	RESTORE_IRQ();
}

void USART0_UDRE_vect(void) __attribute__ ((naked));
void USART0_UDRE_vect(void)
{
	SAVE_IRQ();
	++InterruptCount;
	TxIsr(gSerial[0]);
	ExitInterrupt();
	RESTORE_IRQ();
}

void USART1_RX_vect(void) __attribute__ ((naked));
void USART1_RX_vect(void)
{
	SAVE_IRQ();
	++InterruptCount;
	RxIsr(gSerial[1]);
	ExitInterrupt();
	RESTORE_IRQ();
}

void USART1_UDRE_vect(void) __attribute__ ((naked));
void USART1_UDRE_vect(void)
{
	SAVE_IRQ();
	++InterruptCount;
	TxIsr(gSerial[1]);
	ExitInterrupt();
	RESTORE_IRQ();
}





