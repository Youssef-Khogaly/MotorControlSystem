/* 
 * File:   ECU_INIT.h
 * Author: yosse
 *
 * Created on February 22, 2023, 11:40 PM
 */

#ifndef ECU_INIT_H
#define	ECU_INIT_H

/*-------INCLUDES---------------------*/
#include "../MCAL_Layer/MCAL_INIT.h"
#include "PCA9685/PCA9685.h"
#include "keypad/keypad.h"
#include "lcd/lcd.h"
/*----------MACRO Declraition----------------*/

/*-------Macro Functions ---------------------*/

/*-------user Data types ---------------------*/

/*----------functions prototype----------*/
Std_ReturnType app_inisialize(void);

#endif	/* ECU_INIT_H */

