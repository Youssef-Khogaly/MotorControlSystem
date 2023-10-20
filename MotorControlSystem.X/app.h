/* 
 * File:   app.h
 * Author: yosse
 *
 * Created on January 30, 2023, 11:51 PM
 */

#ifndef APP_H
#define	APP_H
/*-------------includes-------------------*/
#include "ECU_layer/ECU_INIT.h"


/*--------Macros--------*/
#define SERVO1_CHANNEL      PCA9685_CHANNEL0
#define SERVO2_CHANNEL      PCA9685_CHANNEL1
#define SERVO3_CHANNEL      PCA9685_CHANNEL2
#define SERVO4_CHANNEL      PCA9685_CHANNEL3

/*************************/


/**Macro Functions */
#define NUM_TO_CHAR(_NUM)     (_NUM+'0')

/************/
extern lcd_4bit_t _lcd;
extern keypad_t keypad;

void lcd_welcomeMessage(void);
void lcd_MainScreen(void);
void lcd_ServoAngleScreen(void);
void lcd_AngleErrorScreen(void);
void ServoControlHandler(uint8_t channel , uint16_t angle);



#endif	/* APP_H */

