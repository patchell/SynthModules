/*************************************************************************
**	C version of CIO
**	Copyright (c) 1991 Jim Patchell
**
**	This is the Central Input Output device handler.  .
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
#include "semaphore.h"

/***************************************
	CioInit
		Initialize the central IO routines
***************************************/
void CioInit(void)
{
	last_dev = 0;
	IOCBBlocker = NewSemaphore(1,SEMAPHORE_MODE_BLOCKING,"IOCBBlocker");
}
