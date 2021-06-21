/*
 * Settings.h
 *
 * Created: 8/9/2018 9:05:25 AM
 *  Author: Jimmy
 */ 


#ifndef SETTINGS_H_
#define SETTINGS_H_

typedef struct {
	char m_CH1_MidiChannel;
	char m_CH2_Drum1;
	char m_CH3_Drum2;
	char m_CH4_Drum3;
	char m_CH5_Cymbal;
}SETTINGS;

extern volatile SETTINGS Settings;

//--------------------------------
// Addresses of SETTINGS members
//--------------------------------
#define SETTINGS_ADR_CH1_MIDICHAN		0
#define SETTINGS_ADR_CH2_MIDICHAN		1
#define SETTINGS_ADR_TRIG_CHAN			2

extern void ReadSettings(SETTINGS *pSet);
extern void WriteSettings(SETTINGS *pSet);

#endif /* SETTINGS_H_ */