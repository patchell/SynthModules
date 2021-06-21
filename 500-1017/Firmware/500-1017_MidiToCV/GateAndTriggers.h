/*
 * GateAndTriggers.h
 *
 * Created: 8/8/2018 9:24:38 PM
 *  Author: Jimmy
 */ 


#ifndef GATEANDTRIGGERS_H_
#define GATEANDTRIGGERS_H_

//Gate Defines

#define GATE_CH1	0
#define GATE_CH2	1
#define GATE_MIDICLOCK	2
#define GATE_STARTSTOP	3
#define GATE_MIDIRESET	4

//-------------------------------
// Function Prototypes
//-------------------------------
extern void SetGate(int bit);
extern void ClearGate(int bit);
extern void SetTrigger0_7(int bit);
extern void ClearTrigger0_7(int bit);
extern void SetTrigger8_15(int bit);
extern void ClearTrigger8_15(int bit);

#endif /* GATEANDTRIGGERS_H_ */