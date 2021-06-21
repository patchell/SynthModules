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
	CioGetC
		Get a character from the device

	parameters:
		I........pointer to the IO control block for
				the device.
		to......Timeout
	return value:
		returns a character from the device OR
		returns an Error Code
*****************************************************/

int CioGetC(IOCB *I, int to)
{
	//check to see if device was
	//opened for reading
	if((I->mode & FCNTL_RDONLY) == 0)
		return(CIO_WRONLY);	//return error
	//
	// look up function in device table
	// and call get method for device
	//
	return ( (*htabs[I->ichid].HtabsEntry->getv)(I,to)  );
}

/**********************************************
	CioRead
		Read a block of data from a device
	parameters:
		I.....pointer to an IO control block for the device
		b.....pointer to buffer to put data into
		n.....size of buffer in bytes
		to....Timeout
	return value:
		returns a value that is dependent on the
		device driver.  Generally this should be
		the number of bytes written into buffer
		b.  OR
		returns an error code
**********************************************/
int CioRead(IOCB *I,char *b,int n,int to)
{
	//check to see if device was
	//opened for reading
	if((I->mode & FCNTL_RDONLY) == 0)
		return(CIO_WRONLY);	//error code
	//
	//look up function in device table
	// and call read method for device
	//
	return (*htabs[I->ichid].HtabsEntry->readv)(I,b,n,to);
}
