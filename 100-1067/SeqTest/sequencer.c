#include "sequencer.h"

static int Timers[SEQ_NUM_TIMERS];
static int GateTimers[SEQ_NUM_TIMERS];
static EVENT Events[SEQ_NUM_TIMERS];
static int TimerFlags[SEQ_NUM_TIMERS];

int AllocTimer(void)
{
	int i = 0;
	int rv = -1;
	int loop = 1;

	while(loop)
	{
		if(TimerFlags[i])
		{
			rv = i;
			TimerFlags[i] = 0;	//timer inuse
			loop = 0;
		}
		++i;
		if(i == SEQ_NUM_TIMERS)
			loop = 0;
	}
	return rv;
}

void FreeTimer(int i)
{
	if(i < SEQ_NUM_TIMERS)
	{
		TimerFlags[i] = 1;	//mark as free
	}
}

void Init()
{
	int i;

	for(i=0;i<SEQ_NUM_TIMERS;++i)
	{
		Timers[i] = 0;
		GateTimers[i] = 0;
		TimerFlags[i] = 1;	//sets them as free
		Events[i].Type = 0;
		Events[i].aux1 = 0;
		Events[i].aux2 = 0;
		Events[i].aux3 = 0;
	}
}

void ClearGate(int i)
{
}

void SetGate(int i)
{
}

void SetDac(int v)
{
}

int DoTimers(void)
{
	int i;
	int rv = 0;
	for(i = 0;i< SEQ_NUM_TIMERS;++i)
	{
		if(GateTimers[i])
		{
			--GateTimers[i];
			if(GateTimers[i] == 0)
			{
				DoGate(i);
			}
		}
		if(Timers[i])
		{
			--Timers[i];
			if(Timers[i] == 0)
				rv = 1;
		}
	}
	return rv;
}

char *Parse(char *Seq)
{
	int loop = 1;
	int c;

	while(loop)
	{
		c = *Seq++;	//get value
		switch(c)	//parse value
		{
			case VCO1_PITCH:
			case VCO2_PITCH:
			case ADSR_TRIG:
			case DRUM1_PITCH:
			case DRUM2_PITCH:
			case DRUM3_PITCH:
			case CYMBAL_PITCHP:
			case REPEAT_BEGIN:
			case REPEAT_END:
			case EVENT_END:
			case SEQ_END:
			case EVENT_REST:
				break;
			default:
				break;	//error
		}
	}
	return Seq;
}
