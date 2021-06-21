/*
** Header file for Central I/O Handler
** this is a special version of CIO in
** that CioGetC and CioRead have an extra
** parameter for a timeout.
*/

#ifndef CIO__H
#define CIO__H

#include <stdarg.h>
#include "task.h"

#define CIO_MAX_DEV			(20)

/*
** This data structure is used to describe the i/o device
** that has been opened.
*/

typedef struct _iocb{
	int ichid;		/*	handler ID							0	*/
	int devnum;		/*	device number						2	*/
	char *dev_name;	/*	pointer to file name				4	*/
	int mode;		/*	i/o mode file was opened with		8	*/
	void *p;	/*	general purpose pointer					10	*/
	struct _iocb *next;		/* linked list for pool	*/
}IOCB;

/*
** This vector table is used to locate the functions that
** perform the primitive I/O functions for a device
**
** A pointer to this vector table is located in the device
** handler lookup table.
*/

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
	int (*openv)(IOCB *);				/*	0	open vector	*/
	int (*closv)(IOCB *);				/*	1	close vector	*/
	int (*getv)(IOCB *,int timeout);	/*	2	get byte vector	*/
	int (*readv)(IOCB *,char *,int,int);/*	3	read buffer	*/
	int (*putv)(IOCB *,int);			/*	4	put byte vector	*/
	int (*writev)(IOCB *,char *,int);	/*	5	write a buffer	*/
	int (*statv)(IOCB *,int);			/*	6	get status vector	*/
	int (*specv)(IOCB *,int cmd,void *d);		/*	7	special vector	*/
	int (*initv)(void);						/*	8	init code vector	*/
}H_JVEC;


#ifdef __cplusplus
}
#endif

/*
** this is the structure of one element in the device driver
** lookup table.  Each device name is associated with a vector
** table.
*/

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
	const char *dev_name;	/*	pointer to device name			*/
	H_JVEC *HtabsEntry;		/*	pointer to handler jump table	*/
}HTABS;

#ifdef __cplusplus
}
#endif

//*************************************************************************
// Error Codes
//*************************************************************************

#define CIO_ERROR_START			(-64)
#define CIO_DEVTABLE_FULL		(CIO_ERROR_START-0)
#define CIO_NO_DEVICE			(CIO_ERROR_START-1)
#define CIO_WRONLY				(CIO_ERROR_START-2)
#define CIO_RDONLY				(CIO_ERROR_START-3)

#define	EOL	0x0a

//-------------------------------------
// CIO global variables
//-------------------------------------
extern IOCB *PoolList;
extern HTABS htabs[];	/*	space for I/O devices	*/
extern int last_dev;	/*	last device entry in table	*/
extern ECB *IOCBBlocker;

#ifdef __cplusplus
extern "C" {
#endif

//------------------------------------
// CIO functions
//------------------------------------

extern int CioAddHandler(char * devname,H_JVEC *t);
extern IOCB *CioOpen(char *devname,int mode);
extern int CioClose(IOCB *I);
extern int CioGetC(IOCB *I,int timeout);
extern int CioRead(IOCB *I,char *b,int n,int timeout);
extern int CioPutC(IOCB *I,int c);
extern int CioWrite(IOCB *I,char *b,int n);
extern int CioStatus(IOCB *I,int mode);
extern int CioXIO(IOCB *I,int cmd,void *d);


extern void CioInit(void);

#ifdef __cplusplus
}
#endif

#endif
