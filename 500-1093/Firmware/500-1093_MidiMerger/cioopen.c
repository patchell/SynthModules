/*************************************************************************
**	C version of CIO
**	Copyright (c) 1991 Jim Patchell
**
**	This is the Central Input Output device handler.
**
**
**	The functions that can be executed are:
**
**		add handler
**		open
**		close
**		get
**		get record (read)
**		put
**		put record (write)
**		status
**		special command (xio)
**
**
**************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cio.h"
#include "task.h"

IOCB *PoolList;
HTABS htabs[CIO_MAX_DEV];	/*	space for I/O devices	*/
int last_dev = 0;	/*	last device entry in table	*/
ECB *IOCBBlocker;	/*	limits access to one task in critical sections	*/

/******************************************
	dev_search
		search device table for device named
		 and return index into device table

	parameters:
		iocb.......pointer to I/O Control block
	return value:
		returns index into device table
******************************************/

static int dev_search(IOCB *iocb)
{
	int i;
	HTABS *ht;		//pointer to device table
	
	char *n,un[4];		/*unit numbers up to 999	*/
	int l;				/*	length of device name	*/

	l = strcspn(iocb->dev_name,"9876543210:");	/*	we need to find what is not unit number	*/
	ht = htabs + last_dev - 1;					/*	point to handler table	*/
	//-----------------------------------------
	// search device table for device name
	//-----------------------------------------
	for(i=last_dev -1;(i > -1) && strncmp(iocb->dev_name,ht->dev_name,l) ;--i,--ht);
	if(i >= 0)
	{
		/*
		** ok, now we need to locate the unit number
		*/
		n = iocb->dev_name + l;
		if((l = strcspn(n,":")) == 0)
		{
			//------------------------
			// Unit number not found
			//------------------------
			iocb->devnum = 1;		/*	default unit number	*/
		}
		else
		{
			//------------------------
			// copy unit number
			//------------------------
			strncpy(un,n,l);
			un[l] = '\0';
			/*	convert unit number	*/
			iocb->devnum = atoi(un);
		}
	}
	return(i);
}

/*************************************************
	AllocIOCB
		Allocates an I/O Control Block from
		the heap
	return value:
		returns NULL on fail
		returns pointer to IOCB on success.
*************************************************/

static IOCB *AllocIOCB(void)
{
	IOCB *retval;

	//-------------------------------------
	// first check the IOCB pool to see if
	// there are any unused IOCBs in there
	// If there are none, then allocate a
	// new one from the heap
	//--------------------------------------
	if(PoolList == NULL)
		retval = (IOCB *)malloc(sizeof(IOCB));
	else
	{
		//block access to other tasks
		PendSemaphore(IOCBBlocker,0);
		//get first IOCB is pool
		retval = PoolList;
		//update head of pool list
		PoolList = PoolList->next;
		//unblock access to other tasks
		PostSemaphore(IOCBBlocker,0);
	}
	return retval;
}

/***********************************************
	FreeIOCB
		Release an I/O Control Block and put
		it into the IOCB pool
	parameters:
		I.......pointer to IOCB to free
***********************************************/

static void FreeIOCB(IOCB *I)
{
	// block access to other tasks
	PendSemaphore(IOCBBlocker,0);
	// Add IOCB to front of pool list
	I->next = PoolList;
	PoolList = I;
	// unblock access to other tasks
	PostSemaphore(IOCBBlocker,0);
}

//**************************************************************************
// This is the function that you need to call when you want to add another
// device to the device table
//
// parameter:
//	devname..........name of the device to add
//	t................pointer to the vector table for the driver
//
// return value:
//	returns 0 on success, nonzero on fail
//**************************************************************************

int CioAddHandler(char * devname,H_JVEC *t)
{
	int retval = 0;
	int sr;

	//enter critical section, disable interrupts
	sr = Disable();
	//check to see if there is room for another device
	if(last_dev >= CIO_MAX_DEV) retval = CIO_DEVTABLE_FULL;
	else
	{
		htabs[last_dev].dev_name = devname;	/*	device name	*/
		htabs[last_dev].HtabsEntry = t;	/*	address of table	*/
		++last_dev;
	}
	//Exit critical section, enable interrupts
	Enable(sr);
	return retval;
}

/*--------------------------------------------------
** Open Device
**
**	parameters:
**	devname.........name of device to open
**	mode............IO mode to open device
**
** return value:
**	NULL on error
**	pointer to IO Control Block (IOCB) on success
** Usage:
** CioOpen("<devname>[<unit number>]",<IO Mode>);
** <devname> :this is the device name to open
** [<unit number>]: optional unit number
**		this can be 0->9.  If the unit number is
** omitted, the default unit number is '0'
--------------------------------------------------*/

IOCB *CioOpen(char *devname,int mode)
{
	IOCB *iocb;
	// Allocate an IO control block
	if((iocb = AllocIOCB()) != NULL)
	{
		//set up IOCB with device name and mode
		iocb->dev_name = devname;
		iocb->mode = mode;
		//search device table for this device
		if(( iocb->ichid = dev_search(iocb)) < 0)
		{
			//the device was not found
			FreeIOCB(iocb);	//free up IOCB again
			iocb = NULL;
		}
		// call open from device table
		else if(((*htabs[iocb->ichid].HtabsEntry->openv)(iocb)) < 0)
		{
			//open failed, free IOCB
			FreeIOCB(iocb);	//free up IOCB again
			iocb = NULL;
		}
	}
	return(iocb);
}

/*****************************************************
	CioClose
		Close Device

	parameters:
		I.......pointer to I/O Control block to close
	return value:
		returns 0
*****************************************************/
int CioClose(IOCB *I)
{
	//call routine in device driver to close port
	(*htabs[I->ichid].HtabsEntry->closv)(I);
	//return the IOCB to the pool
	FreeIOCB(I);
	return(0);
}
