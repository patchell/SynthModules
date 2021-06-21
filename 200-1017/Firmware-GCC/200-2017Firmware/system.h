/**************************************************************************
** This file descibes things about the system
**
** Craeted July 11, 2007
** by Jim Patchell
**
**************************************************************************/

#ifndef SYSTEM__H
#define SYSTEM__H

#define SYSTEM_LED				*((volatile unsigned char *)0xf000)
#define SYSTEM_CONTROLREG		*((volatile unsigned char *)0xf020)


#ifndef BIT
#define BIT(x)	((1 << x))
#endif

#define LOW(x)		((x) & 0xff)
#define MIDLO(x)	(((x) >> 8) & 0x0ff)
#define MIDHI(x)	(((x) >> 16) & 0x0ff)
#define HIGH(x)		(((x) >> 24) & 0x0ff)

#define ILOW(x)		(x)
#define IMIDLO(x)	((x) << 8)
#define IMIDHI(x)	((x)<< 16)
#define IHIGH(x)	((x)<< 24)


//#define SYSTEM_CLOCKRATE	7372800L		//7.3728MHz
#define SYSTEM_CLOCKRATE	8000000L		//8MHz
	
extern void OS_InitMalloc(char *start_of_heap, char * end_of_heap);

//extern unsigned int FreeHeapSpace(void);

#endif
