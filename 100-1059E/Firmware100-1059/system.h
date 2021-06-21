/**************************************************************************
** This file describes things about the system
**
** Created July 11, 2007
** by Jim Patchell
**
**************************************************************************/

#ifndef SYSTEM__H
#define SYSTEM__H


#define BAUD_MIDI		39		//baud rate divisor
								//20MHz clock
								//31250 BAUD



#define LOW(x)		((x) & 0xff)
#define MIDLO(x)	(((x) >> 8) & 0x0ff)
#define MIDHI(x)	(((x) >> 16) & 0x0ff)
#define HIGH(x)		(((x) >> 24) & 0x0ff)

#define ILOW(x)		(x)
#define IMIDLO(x)	((x) << 8)
#define IMIDHI(x)	((x)<< 16)
#define IHIGH(x)	((x)<< 24)


#define SYSTEM_CLOCKRATE	20000000L		//20MHz

	
extern void OS_InitMalloc(char *start_of_heap, char * end_of_heap);

#endif
