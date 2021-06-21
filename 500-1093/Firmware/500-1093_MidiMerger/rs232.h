/*******************************************************************
** Device Driver for UARTS on ATmega640/1280/1281/1284/2561
**
** Created July 10, 2007
** by Jim Patchell
**
** Written for WinAVR
**
********************************************************************/

#ifndef RS232__H
#define RS232__H

#include "task.h"

#define RS232_N_PORTS			2
#define RS232_DEF_BAUDRATE		19200
#define RS232_DEF_T_BUFF_SIZE	256
#define RS232_DEF_R_BUFF_SIZE	256

#define RS232_STAT_NREC			0
#define RS232_STAT_TMT			1

#define RS232_XIO_SETBAUD		0	/*!< XIO command, Set Baud Rate	*/

typedef struct {
	unsigned char *pUDR;	//uart data register
	unsigned char *pUCSRnA;	//control and status register
	unsigned char *pUCSRnB;	//control and status register
	unsigned char *pUCSRnC;	//control and status register
	unsigned short *pUBRR;	//baud rate generator (16 bits)
}RREG;

typedef struct {
	unsigned short head;		//buffer head pointer
	unsigned short tail;		//buffer tail pointer
	unsigned short nChar;		//number of characters in buffer
	unsigned short size;		//buffer size
	unsigned short Errors;		//errors encountered
	ECB *pSem;					//buffer counting semaphore
	ECB *pSemBlkr;				//blocking semaphore
	char *buff;					//buffer where characters are stored
}IOREC;

typedef struct {
	IOREC Rx;
	IOREC Tx;
	RREG *regs;
} SERIAL;

extern int RInit(void);

#endif
