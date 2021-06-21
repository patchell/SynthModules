#ifndef MULTISEGEVGEN__H
#define MULTISEGEVGEN__H

/*
	Envelope Generator States
*/

#define EVSTATE_RELEASE		0x70
#define EVSTATE_ATTACK		0xe0
#define EVSTATE_SEG1		0xd0
#define EVSTATE_SUSTAIN		0xb0

/*
	State Outputs
*/

#define EVSTATEOUT_RELEASE	0x08
#define EVSTATEOUT_ATTACK	0x01
#define EVSTATEOUT_SEG1		0x02
#define EVSTATEOUT_SUSTAIN	0x04

/*
	State Machine Inputs
*/

#define EVGATE			0x04
#define EVDONE			0x08
#endif
