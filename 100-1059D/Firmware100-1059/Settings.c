/*
 * Settings.c
 *
 * Created: 8/9/2018 4:28:23 PM
 *  Author: Jimmy
 */ 
#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include "task.h"
#include "Settings.h"

void ReadSettings(SETTINGS *pSet)
{
	eeprom_read_block(pSet,SETTINGS_ADR_CH1_MIDICHAN,sizeof(SETTINGS));
}

void WriteSettings(SETTINGS *pSet)
{
	eeprom_update_block(pSet,SETTINGS_ADR_CH1_MIDICHAN,sizeof(SETTINGS));
}