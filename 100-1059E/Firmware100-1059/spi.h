/*
 * spi.h
 *
 * Created: 8/8/2018 4:50:50 PM
 *  Author: Jimmy
 */ 


#ifndef SPI_H_
#define SPI_H_

extern void InitSpi(void);
extern void WriteSpi(char v);
extern void WriteDAC(int v, int Sel);
extern void WriteADSRstate(int v,int unit);

#endif /* SPI_H_ */