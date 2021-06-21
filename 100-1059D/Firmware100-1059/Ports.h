/*
 * Ports.h
 *
 * Created: 2/6/2019 11:48:02 AM
 *  Author: Jimmy
 */ 


#ifndef PORTS_H_
#define PORTS_H_

 void InitPorts(void);
 void SetPortA(int bit);
 void ClearPortA(int bit);
  void SetDacSel(int sel);
 void SetPortB(int bit);
 void ClearPortB(int bit);
 void SetPortC(int bit);
 void ClearPortC(int bit);
 void SetPortD(int bit);
 void ClearPortD(int bit);
 

#endif /* PORTS_H_ */