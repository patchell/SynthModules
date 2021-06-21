#ifndef FCNTL__H
#define FCNTL__H

#define	FCNTL_RDONLY	0x01	/* Read mode */
#define FCNTL_WRONLY	0x02	/* Write mode */
#define FCNTL_APPEND	0x04	/* Start writing at the end of file */
#define	FCNTL_CREATE	0x08	/* Create file	*/
#define	FCNTL_TRUNC		0x10	/* Truncate file mode	*/
#define	FCNTL_EXCL		0x20	/* Open only if it does not exist */
#define	FCNTL_TEXT		0x40	/* translate EOL mode */
#define	FCNTL_BINARY	0x80	/* Raw mode */

#endif

