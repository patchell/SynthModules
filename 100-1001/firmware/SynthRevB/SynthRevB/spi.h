/*
 * spi.h
 *
 * Created: 1/11/2019 2:19:42 PM
 *  Author: Jimmy
 */ 


#ifndef SPI_H_
#define SPI_H_

#define SPIPORT_PITCH		0
#define SPIPORT_VELOCITY	1
#define SPIPORT_PRESSURE	2
#define SPIPORT_PITCHBEND	3
#define SPIPORT_SEQ0		4
#define SPIPORT_SEQ1		5
#define SPIPORT_SEQ2		6
#define SPIPORT_SEQ3		7

typedef struct {
	char *m_buff;
	int m_head;
	int m_tail;
	int m_nChars;
	int m_Bsize;
}SPIBUFF;

extern void InitSPI(void);
extern void SendData(int d,int port);


#endif /* SPI_H_ */