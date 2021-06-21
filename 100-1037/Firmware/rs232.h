/*******************************************************************
** Device Driver for UARTS on ATmega8515
**
** Craeted July 10, 2007
** by Jim Patchell
**
** Written for WinAVR
**
********************************************************************/

#ifndef RS232__H
#define RS232__H



#define N_PORTS		1

typedef struct {
	volatile unsigned char *pUDR;	//uart data register
	volatile unsigned char *pUCSRnA;	//control and status register
	volatile unsigned char *pUCSRnB;	//control and status register
	volatile unsigned char *pUCSRnC;	//control and status register
	volatile unsigned char *pUBRRL;	//baud rate generator Low 8 bits
	volatile unsigned char *pUBRRH;	//baud rate generator High 8 bits
}RREG;

typedef struct {
	unsigned char m_RxHead;
	unsigned char m_RxTail;
	unsigned char m_RxnChar;
	unsigned char m_RxSize;
	char *m_pRxBuff;
	unsigned char m_TxHead;
	unsigned char m_TxTail;
	unsigned char m_TxnChar;
	unsigned char m_TxSize;
	char *m_pTxBuff;
	RREG *regs;
}IOREC;



extern char RGetC(IOREC *pI);
extern void RPutC(IOREC *pI,char c);
extern char RStatus(IOREC *pI);
extern IOREC *RInit(char *pTb,unsigned char TSize,char *pRb,unsigned char nRSize,long nBaudRate);

#endif
