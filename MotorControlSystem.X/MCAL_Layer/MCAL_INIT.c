
#include "MCAL_INIT.h"


/*------Global Variables---------*/


/*-----Static functions---------*/

Std_ReturnType mcal_init(void)
{
i2c_t i2c = {
    .i2c_MasterClock_SlaveAddress = 100000,
    .I2C_Report_writeCollision = NULL,
    .I2C_Report_Receive_OverFlow = NULL,
    .i2c_cfg.i2c_SMBUS = I2C_SMBUS_DISABLE,
    .i2c_cfg.i2c_mode = I2C_MASTER_MODE_DEFINED_CLK,
    .i2c_cfg.i2c_SlewRate = I2C_SLEW_RATE_DISABLE
};
    Std_ReturnType ret = E_NOT;
    ret = i2c_init(&i2c);
    
    
    return ret;
}