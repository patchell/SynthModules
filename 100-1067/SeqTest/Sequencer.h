#ifndef SEQUENCER_H_INCLUDED
#define SEQUENCER_H_INCLUDED

//--------------------------------
// Event objects
//--------------------------------

#define VCO1_PITCH		0x80
#define VCO2_PITCH		0x81
#define ADSR_TRIG		0x82
#define DRUM1_PITCH		0x83
#define DRUM2_PITCH		0x84
#define DRUM3_PITCH		0x85
#define CYMBAL_PITCH	0x86
#define REPEAT_BEGIN	0x87
#define REPEAT_END		0x88
#define EVENT_END		0x89
#define SEQ_END			0x8a
#define EVENT_REST		0x8b

//---------------------------
// Misc Objects
//---------------------------

#define SEQ_NUM_TIMERS	8

typedef struct {
	char Type;
	char aux1;
	char aux2;
	char aux3;
}EVENT;


#endif // SEQUENCER_H_INCLUDED
