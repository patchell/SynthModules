/*************************************************************************
**	C version of CIO
**	Copyright (c) 1991 Jim Patchell
**
**	This is the Central Input Output device handler.
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
#include "fcntl.h"
#include "cio.h"
#include "task.h"

/*****************************************************
	CioPutC
		Write a single character to a device
	parameters:
		I......pointer to IOCB for a device
		c......character to write to the device
	return value:
		Return value will either be an error code
		or a device dependent value
*****************************************************/
int CioPutC(IOCB *I,int c)
{
	//check to see if device was opened in write mode
	if((I->mode & FCNTL_WRONLY) == 0)
		return(CIO_RDONLY);	/*	read only error	*/
	//
	//look up function and then call
	//put method from device table
	//
	return( (*htabs[I->ichid].HtabsEntry->putv)(I,c));
}

/************************************************
	CioWrite
		Write a buffer out to a device
	parameters:
		I......pointer to the IOCB for the device
		b......pointer to buffer to write
		n......number of bytes in buffer to write
	return value:
		returns an error code OR
		Number of bytes actually written to device
************************************************/
int CioWrite(IOCB *I,char *b,int n)
{
	//check to see if device was opened for writing
	if((I->mode & FCNTL_WRONLY) == 0)
		return(CIO_RDONLY);	/*	read only error	*/
	//
	// look up function and call write
	// method from device table
	return( (*htabs[I->ichid].HtabsEntry->writev)(I,b,n));
}
