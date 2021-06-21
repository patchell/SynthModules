/*
 * Uart.c
 *
 * Created: 1/25/2018 10:35:08 PM
 *  Author: James Patchell
 */ 
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include "Uart.h"
#include "system.h"
#include "Firmware100-1059D.h"

static IOREC RxDesc;
static IOREC TxDesc;

//************************************************
//	USART_RX_vect
//************************************************
void USART0_RX_vect(void) __attribute__ ((naked));
void USART0_RX_vect(void)
{
	int c;

	SAVE_IRQ();
	EnterInterrupt();
	if(RxDesc.m_nChar < RxDesc.m_Size)
	{
		PostSemaphore(RxDesc.m_pSem,0);
		c = UDR0;
		RxDesc.m_pBuffer[RxDesc.m_Head++] = c;
		RxDesc.m_nChar++;
		if(RxDesc.m_Head == RxDesc.m_Size) RxDesc.m_Head = 0;
	}
	ExitInterrupt();
	RESTORE_IRQ();
}

//*************************************************
//	USART_Status
//*************************************************
int USART_Status(void)
{
	return RxDesc.m_nChar;
}

//***************************************************
//	USART_GetC
//		Get a character from the uart
//***************************************************
int USART_GetC(void)
{
	int c=-1;
	char sr;

	//-------------------------
	// if there are no chars
	// waiting for us, pend
	// until there are
	//-------------------------
	PendSemaphore(RxDesc.m_pSem,0);
	sr = Disable();	//enter critical section
	c = RxDesc.m_pBuffer[RxDesc.m_Tail++];
	RxDesc.m_nChar--;
	if(RxDesc.m_Tail == RxDesc.m_Size)
		RxDesc.m_Tail = 0;
	Enable(sr);
	return c;
}

//*************************************************
//	USART_UDRE_vect
//		This is the interrupt handler for the
// transmit function of the uart.
//*************************************************

void USART0_UDRE_vect(void) __attribute__ ((naked));
void USART0_UDRE_vect(void)
{
	SAVE_IRQ();		//save context
	EnterInterrupt();
	PostSemaphore(TxDesc.m_pSem,0);	//increment semaphore count
									//this indicates the free space of the buffer
	UDR0 = TxDesc.m_pBuffer[TxDesc.m_Tail++];;	//send data
	TxDesc.m_nChar--;	//decrement number of chars in buffer
	if(TxDesc.m_nChar == 0) UART_TXirq(0);	//disable interrupt if no chars
	if(TxDesc.m_Tail == TxDesc.m_Size) TxDesc.m_Tail = 0;	//update tail pointer
	ExitInterrupt();
	RESTORE_IRQ();
}

//**********************************************
// USART_PutC
//	Output a character to the Uart
//	This function is metered by a semaphore
// whose initial count is set to the size of
// of the output buffer
//
// Parameters:
//		c......character to output to Uart
//**********************************************
void USART_PutC(int c)
{
	char sr;

	PendSemaphore(TxDesc.m_pSem,0);
	sr = Disable();
	TxDesc.m_pBuffer[TxDesc.m_Head++] = c;
	if(TxDesc.m_Head == TxDesc.m_Size) TxDesc.m_Head = 0;
	TxDesc.m_nChar++;
	UART_TXirq(1);
	Enable(sr);
}

void UART_TXirq(char en)
{
	if(en)
		UCSR0B |= BIT(UDRIE0);
	else
		UCSR0B &= ~BIT(UDRIE0);
}

void USART_Init(void)
{
	//---------------------------------------
	// Transmit descriptor
	//---------------------------------------
	 TxDesc.m_pBuffer = malloc(UART_BUFFSIZE);
	 TxDesc.m_Head = 0;
	 TxDesc.m_Tail = 0;
	 TxDesc.m_nChar = 0;
	 TxDesc.m_Size = UART_BUFFSIZE;
	 TxDesc.m_pSem = NewSemaphore(UART_BUFFSIZE,SEMAPHORE_MODE_BLOCKING,"TxBlock");
	 //---------------------------------------
	 // Receive Descriptor
	 //---------------------------------------
	 RxDesc.m_pBuffer = malloc(UART_BUFFSIZE);
	 RxDesc.m_Head = 0;
	 RxDesc.m_Tail = 0;
	 RxDesc.m_nChar = 0;
	 RxDesc.m_pSem = NewSemaphore(0,SEMAPHORE_MODE_BLOCKING,"RxBlock");
	 RxDesc.m_Size = UART_BUFFSIZE;
	 //---------------------------------
	 // Set Baud Rate
	 // UBRR = Fosc/(16 * Baud) - 1
	 //---------------------------------
	 UBRR0H = 0;
	 UBRR0L = BAUD_MIDI; // 20000000/(16 * 31250) - 1
	 UCSR0A = 0;
	 //----------------------------------
	 // Enable TX and RX interrupt
	 //----------------------------------
	 UCSR0B = BIT(RXCIE0) | BIT(RXEN0) | BIT(TXEN0);
	 //----------------------------------
	 // 8 Bits, No parity
	 //----------------------------------
	 UCSR0C =  BIT(UCSZ01) | BIT(UCSZ00);
}
