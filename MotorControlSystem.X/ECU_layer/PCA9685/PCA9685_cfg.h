/* 
 * File:   PCA9685_cfg.h
 * Author: yosse
 *
 * Created on October 18, 2023, 7:09 PM
 */

#ifndef PCA9685_CFG_H
#define	PCA9685_CFG_H


/*
 *  min and max control puls in us for 180 servo angle required for
 *  Std_ReturnType PCA9685_SetServoAngle_180(uint8_t Channel , uint8_t Angle) function
 */
#define PCA9685_SERVO_MIN_PULS_US       1000UL
#define PCA9685_SERVO_MAX_PULS_US       2000UL



#define PCA9685_USE_INT_CLK     0x00
#define PCA9685_USE_EXT_CLK     0x01

/*
 * options:
 *          PCA9685_USE_INT_CLK
 *          PCA9685_USE_EXT_CLK
 */
#define PCA9685_CLOCK_CFG   PCA9685_USE_INT_CLK


#define PCA9685_OUTPUT_CHANGE_ON_STOP       0x00
#define PCA9685_OUTPUT_CHANGE_ON_ACK        0x01

/*
 *options:  
 *          PCA9685_OUTPUT_CHANGE_ON_STOP
 *          PCA9685_OUTPUT_CHANGE_ON_ACK
 * 
 */
#define PCA_9685_OUTPUT_CHANGE_CFG      PCA9685_OUTPUT_CHANGE_ON_STOP

#define PCA9685_OUTPUT_OPEN_DRAIN_STRUCTURE     0x00
#define PCA9685_OUTPUT_PUSH_PULL_STRUCTURE      0x01

/*
 options:
 *          PCA9685_OUTPUT_OPEN_DRAIN_STRUCTURE
 *          PCA9685_OUTPUT_PUSH_PULL_STRUCTURE
 */
#define PCA9685_OUTPUT_STRUCTURE_CFG    PCA9685_OUTPUT_PUSH_PULL_STRUCTURE



#if PCA9685_CLOCK_CFG == PCA9685_USE_INT_CLK
#define PCA9685_CLK_FREQ        25000000UL
#elif

/*
 * user must write the ext freq value 
 * MAX 50MHZ
 */
#define PCA9685_CLK_FREQ        25000000UL
#endif


/*
 * default 0x40
 */
#define PCA9685_BUS_ADDRESS         0x40

#endif	/* PCA9685_CFG_H */

