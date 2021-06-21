/*
 * Uart.h
 *
 * Created: 1/26/2018 9:37:23 AM
 *  Author: Jimmy
 */ 
 #ifndef UART_H_
#define UART_H_

#include "semaphore.h"

#define UART_BUFFSIZE		128

typedef struct {
	SEMAPHORE *m_pSem;	//semaphore for managing buffer
	char *m_pBuffer;	//pointer to the buffer
	int m_Size;		// Buffer size in bytes
	volatile int m_Head;		// Buffer Head Index
	volatile int m_Tail;		// Buffer Tail Index
	volatile int m_nChar;		// Number of chars in buffer
}IOREC;

extern int USART_GetC(void);
extern void USART_PutC(int c);
extern void USART_Init(void);
extern void UART_TXirq(char en);
extern int USART_Status(void);

#endif /* UART_H_ */