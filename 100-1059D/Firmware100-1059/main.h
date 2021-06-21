/*
 * main.h
 *
 * Created: 8/8/2018 9:05:31 PM
 *  Author: Jimmy
 */ 


#ifndef MAIN_H_
#define MAIN_H_

extern SEMAPHORE *pSemReset,*pSemClock;
extern SEMAPHORE *pSemAdc;

//-----------------------------
// DacMessages Commands
//-----------------------------
#define DAC_TIMER		0		//message from real time clock
#define DAC_SETDAC		1		//set DAC value
//-----------------------------
// Message Payload
//----------------------------
typedef struct
{
	char	m_Channel;		//Dac Channel
	char	m_GateFlag;		//turn gate on/off
	int		m_Value;		//Dac Value
}PAYLOAD;

#define PAYLOAD_PITCH1			0
#define PAYLOAD_VELOC1			1
#define PAYLOAD_PRESS1			2
#define PAYLOAD_WHEEL1			3
#define PAYLOAD_PITCH2			4
#define PAYLOAD_VELOC2			5
#define PAYLOAD_PRESS2			6
#define PAYLOAD_WHEEL2			7

#define PAYLOAD_GATEON	0x80	//gate gets turned on
#define PAYLOAD_GATEOFF	0x40	//gate gets turned off

#endif /* MAIN_H_ */