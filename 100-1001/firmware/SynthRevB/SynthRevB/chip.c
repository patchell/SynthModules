// Crystal: 8.0000Mhz

#include <avr/io.h>
#include "smb.h"
#include "midi.h"

static unsigned char GateShadow;

void SetGatePort(char bit)
{
	GateShadow |= (1 << bit);
	GATE_PORT = GateShadow;
	LED_PORT = ~GateShadow;
}

void ClearGatePort(char bit)
{
	GateShadow &= ~(1 << bit);
	GATE_PORT = GateShadow;
	LED_PORT = ~GateShadow;
}