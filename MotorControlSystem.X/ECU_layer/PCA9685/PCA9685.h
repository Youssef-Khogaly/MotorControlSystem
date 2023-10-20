/* 
 * File:   PCA9685.h
 * Author: yossef
 *
 * Created on October 18, 2023, 7:08 PM
 */

#ifndef PCA9685_H
#define	PCA9685_H
#include "../../MCAL_Layer/std_lib.h"
#include "../../MCAL_Layer/mcal_std_types.h"
#include "PCA9685_cfg.h"



#define PCA9685_CHANNEL0     0
#define PCA9685_CHANNEL1     1
#define PCA9685_CHANNEL2     2
#define PCA9685_CHANNEL3     3
#define PCA9685_CHANNEL4     4
#define PCA9685_CHANNEL5     5
#define PCA9685_CHANNEL6     6
#define PCA9685_CHANNEL7     7
#define PCA9685_CHANNEL8     8
#define PCA9685_CHANNEL9     9
#define PCA9685_CHANNEL10    10
#define PCA9685_CHANNEL11    11
#define PCA9685_CHANNEL12    12
#define PCA9685_CHANNEL13    13
#define PCA9685_CHANNEL14    14
#define PCA9685_CHANNEL15    15

/**
 * 
 * @param Freq : pwm signal frequncy -> min = 24 , Max = 1526
 * @return 
 */
Std_ReturnType PCA9685_init(uint16_t Freq);
Std_ReturnType PCA9685_Restart(void);

Std_ReturnType PCA9685_Set_DutyCycle(uint8_t Channel , double_t DutyCycle , uint8_t delay);
Std_ReturnType PCA9685_Set_OnTime_us(uint8_t Channel , uint32_t OnTime);


/**
 * @brief: set servo to specific angle function work on 180degree servo only
 *          and user must set min and max control puls in us in PCA9685_cfg 
 * @param Channel: 0 ~ 15 pca channels
 * @param Angle required angle for servo min 0 , max 15
 * @return 
 *          E_OK - > function done
 *          E_NOT -> Error
 */
Std_ReturnType PCA9685_SetServoAngle_180(uint8_t Channel , uint8_t Angle);


#endif	/* PCA9685_H */

