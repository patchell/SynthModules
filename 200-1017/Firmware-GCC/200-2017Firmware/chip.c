// Crystal: 8.0000Mhz

#include <avr/io.h>
#include "2001017.h"
#include "midi.h"

static unsigned char GateShadow;

void SetGatePort(char bit)
{
	GateShadow |= (1 << bit);
	GATE_WD = GateShadow;
}

void ClearGatePort(char bit)
{
	GateShadow &= ~(1 << bit);
	GATE_WD = GateShadow;
}