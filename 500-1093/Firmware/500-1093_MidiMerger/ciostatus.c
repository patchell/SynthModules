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

/*********************************************
	CioStatus
		Returns device status
	parameters:
		I.....pointer to IO control block for device
		mode..specifies type of status (device dependent)
	return value:
		a value that represents the device
		status as specified by mode
*********************************************/
int CioStatus(IOCB *I,int mode)
{
	//----------------------------------
	// look up device in device table and
	// call the status method
	//-----------------------------------
	return((*htabs[I->ichid].HtabsEntry->statv)(I,mode) );
}
