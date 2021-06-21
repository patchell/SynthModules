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
#include "cio.h"
#include "task.h"

/**********************************************
	CioXIO
		Special IO commands.  This call is
		used to implement any functions
		that cannot be handled by the other
		calls.  For example, setting the baud
		rate of a serial port.
	parameters:
		I....pointer to IOCB for the device
		cmd..Special command to be performed
			The value of cmd is device dependent
		d....Any other data that is needed
	return value:
		depends on the device driver
**********************************************/

int CioXIO(IOCB *I,int cmd,void *d)
{
	return((*htabs[I->ichid].HtabsEntry->specv)(I,cmd,d));
}

