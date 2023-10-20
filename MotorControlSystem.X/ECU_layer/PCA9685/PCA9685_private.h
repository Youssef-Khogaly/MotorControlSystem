/* 
 * File:   PCA9685_private.h
 * Author: yosse
 *
 * Created on October 18, 2023, 7:21 PM
 */

#ifndef PCA9685_PRIVATE_H
#define	PCA9685_PRIVATE_H

#include "PCA9685_cfg.h"


#define PCA9685_CHANNE_OFFSET       0x04

#define PCA9685_LED0_ONLOW_REG_ADD    0x06


#define PCA9685_MODE1_REG_ADD       0x00

#define PCA9685_MODE1_RESTART_BIT              0x07
#define PCA9685_MODE1_EXTCLK_BIT               0x06
#define PCA9685_MODE1_AUTO_INC_BIT             0x05
#define PCA9685_MODE1_SLEEP_BIT                0x04
#define PCA9685_MODE1_SUB1_ADD_BIT             0x03
#define PCA9685_MODE1_SUB2_ADD_BIT             0x02
#define PCA9685_MODE1_SUB3_ADD_BIT             0x01
#define PCA9685_MODE1_GEN_CALL_ADD_BIT         0x00


#define PCA9685_MODE2_REG_ADD       0x01

#define PCA9685_MODE2_INVRT_BIT                 0x04
#define PCA9685_MODE2_OUTPUT_CHABGE_BIT         0x03
#define PCA9685_MODE2_OUTDRV_BIT                0x02
#define PCA9685_MODE2_OUTNE_BIT                 0x01


#define PCA9685_SWRST_VAL                       0x06

#define PCA9685_PRESCALER_REG_ADD               0xFE

#define PCA9685_MODE1_CFG       ( (PCA9685_CLOCK_CFG << PCA9685_MODE1_EXTCLK_BIT ) | (0x01 << PCA9685_MODE1_AUTO_INC_BIT ) | (0x00))

#define PCA_9685_MODE2_CFG      ( (PCA_9685_OUTPUT_CHANGE_CFG << PCA9685_MODE2_OUTPUT_CHABGE_BIT) | (PCA9685_OUTPUT_STRUCTURE_CFG << PCA9685_MODE2_OUTDRV_BIT ) )

#endif	/* PCA9685_PRIVATE_H */

