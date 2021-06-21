/*
 * Ports.c
 *
 * Created: 2/6/2019 11:47:34 AM
 *  Author: Jimmy
 */ 

 #include <avr\io.h>
 #include "Ports.h"
 #include "task.h"
 #include "semaphore.h"
 #include "Firmware100-1059D.h"

 static volatile char PortAShad;
 static volatile char PortBShad;
 static volatile char PortCShad;
 static volatile char PortDShad;

 void InitPorts(void)
 {
	PORTA = 0x00;
	PORTB = 0x41;
	PORTC = 0x00;
	PORTD = 0x10;
 }
 
 void SetPortA(int bit)
 {
	char sr = Disable();
	PortAShad |= BIT(bit);
	PORTA = PortAShad;
	Enable(sr);
 }

 void ClearPortA(int bit)
 {
	char sr = Disable();
 	PortAShad &= ~BIT(bit);
 	PORTA = PortAShad;
	Enable(sr);
}

 void SetDacSel(int sel)
 {
	char sr = Disable();
	sel <<= PORTA_DACSEL0;
  	PortAShad &= ~(BIT(PORTA_DACSEL3) | BIT(PORTA_DACSEL2)| BIT(PORTA_DACSEL1) | BIT(PORTA_DACSEL0));
	PortAShad |= sel;
  	PORTA = PortAShad;
	Enable(sr);
 }

 void SetPortB(int bit)
 {
	char sr = Disable();
	PortBShad |= BIT(bit);
	PORTB = PortBShad;
	Enable(sr);
 }

 void ClearPortB(int bit)
 {
	char sr = Disable();
	PortBShad &=~BIT(bit);
	PORTB = PortBShad;
 	Enable(sr);
}

 void SetPortC(int bit)
 {
	char sr = Disable();
	PortCShad |= BIT(bit);
	PORTC = PortCShad;
	Enable(sr);
 }

 void ClearPortC(int bit)
 {
	char sr = Disable();
	PortCShad &= ~BIT(bit);
	PORTC = PortCShad;
	Enable(sr);
}

 void SetPortD(int bit)
 {
	char sr = Disable();
	PortDShad |= BIT(bit);
	PORTD = PortDShad;
 	Enable(sr);
}

 void ClearPortD(int bit)
 {
	char sr = Disable();
	PortDShad &= ~BIT(bit);
	PORTD = PortDShad;
 	Enable(sr);
}