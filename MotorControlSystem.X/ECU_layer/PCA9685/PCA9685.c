#include"PCA9685_cfg.h"
#include "PCA9685_private.h"
#include "PCA9685.h"
#include "../../MCAL_Layer/I2C/I2C.h"

static uint16_t G_Freq = 0;
static uint8_t G_PreScaler = 0;
static inline uint8_t PrescalerCalculation(void);

// helper function to write ontime and off time based on 4096 scales
static void inline setOnTime_OffTime(uint8_t Channel ,uint16_t onTime , uint16_t OffTime);

Std_ReturnType PCA9685_init(uint16_t Freq)
{
    Std_ReturnType ret = E_NOT;
    uint8_t ACK = I2C_TRASMITER_ACK_NOT_RECEIVED;
    if(Freq >= 24 && Freq <= 1526)
    {
        G_Freq = Freq;
        /* reset pca9685 */
        ret = i2c_Master_SendStart();
        ret &= i2c_Master_WriteByte_Blocking( 0x00 , &ACK);
        ret &= i2c_Master_WriteByte_Blocking(PCA9685_SWRST_VAL , &ACK);
        ret &= i2c_Master_SendStop();
        /*----------------------*/
        G_PreScaler = PrescalerCalculation();
        /*Enter Sleep Mode to edit prescaler and osci if needed */
        ret &= i2c_Master_SendStart();
        ret &= i2c_Master_WriteByte_Blocking((PCA9685_BUS_ADDRESS<<1) , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( PCA9685_MODE1_REG_ADD , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( (1<<PCA9685_MODE1_SLEEP_BIT)|(PCA9685_CLOCK_CFG<<PCA9685_MODE1_EXTCLK_BIT), &ACK);
        ret &= i2c_Master_SendStop();
        __delay_us(550);
        /*-------------*/
        /*edit prescaler*/
        ret &= i2c_Master_SendStart();
        ret &= i2c_Master_WriteByte_Blocking((PCA9685_BUS_ADDRESS<<1) , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( PCA9685_PRESCALER_REG_ADD , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( G_PreScaler , &ACK);
        ret &= i2c_Master_SendStop();
        /* configure mode 1 and mode 2*/
       ret &= i2c_Master_SendStart();
       ret &= i2c_Master_WriteByte_Blocking((PCA9685_BUS_ADDRESS<<1) , &ACK);
       ret &= i2c_Master_WriteByte_Blocking( PCA9685_MODE1_REG_ADD , &ACK);
       ret &= i2c_Master_WriteByte_Blocking( PCA9685_MODE1_CFG, &ACK);
       ret &= i2c_Master_WriteByte_Blocking(PCA_9685_MODE2_CFG,&ACK);
       ret &= i2c_Master_SendStop();
    }
    else
    {
        
    }
    return ret;
}

Std_ReturnType PCA9685_Set_DutyCycle(uint8_t Channel , double_t DutyCycle , uint8_t delay)
{
    Std_ReturnType ret = E_NOT;
    uint16_t LedOn = 0; /* value needed to write to LED ON reg in PCA9685*/
    uint16_t LedOff = 0; /* value needed to write to LED OFF reg in PCA9685*/
    uint16_t ledOnTime = 0; /* on time in ticks of pca 9685 */
    if(Channel>= 0 && Channel <= 15 && DutyCycle >= 0.0 && DutyCycle<= 100.0  && delay >= 0 && delay<= 100  )
    {
          LedOn = (delay > 0 ) ? (uint16_t)round( ( ( (delay*4096)/100.0 ) - 1.0 ) ) : 0;
          ledOnTime = (uint16_t)round( ((DutyCycle)*4096.0)/100.0 );
          
          if(LedOn+ledOnTime > 4096)
          {
               LedOff = (uint16_t)(LedOn+ledOnTime - 4096 );
          }
          else
          {
               LedOff = (uint16_t)(LedOn+ledOnTime);
          }
          setOnTime_OffTime(Channel, (LedOn & 0x0FFF), (LedOff & 0x0FFF) );
          ret = E_OK;
    }
    else
    {
        
    }
    return ret;
}

Std_ReturnType PCA9685_Set_OnTime_us(uint8_t Channel , uint32_t OnTime)
{
    Std_ReturnType ret = E_NOT;
    double_t DutyCycle = 0.0;
    double_t period_us = 0.0;
     if(Channel >= 0 && Channel <= 15)
     {
         period_us = (1.0/G_Freq)*(1000000.0);
         if(OnTime > (uint32_t)period_us)
             return ret;
         DutyCycle = ( (double_t)OnTime/period_us )*100.0;
         ret = PCA9685_Set_DutyCycle(Channel,DutyCycle,0);
         
     }
     else {}
    
    return ret;
}


Std_ReturnType PCA9685_SetServoAngle_180(uint8_t Channel , uint8_t Angle)
{
    Std_ReturnType ret = E_NOT;
    double_t onTime_per_angle = 0;
    uint32_t ontime_us = 0;
    if(Channel >= 0 && Channel <= 15 && Angle >= 0 && Angle <= 180 )
    {
        onTime_per_angle = ((PCA9685_SERVO_MAX_PULS_US-PCA9685_SERVO_MIN_PULS_US)/(double_t)180.0);
        ontime_us = (uint32_t)(onTime_per_angle * Angle);
        ret = PCA9685_Set_OnTime_us(Channel,ontime_us+PCA9685_SERVO_MIN_PULS_US);
    }
    else { /*nothing*/}
    
    return ret;
}


static void inline setOnTime_OffTime(uint8_t Channel ,uint16_t onTime , uint16_t OffTime)
{
        Std_ReturnType ret = E_NOT;
        uint8_t ACK = I2C_TRASMITER_ACK_NOT_RECEIVED;
        ret = i2c_Master_SendStart();
        ret &= i2c_Master_WriteByte_Blocking((PCA9685_BUS_ADDRESS<<1) , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( ((Channel*PCA9685_CHANNE_OFFSET)+PCA9685_LED0_ONLOW_REG_ADD) , &ACK);
        ret &= i2c_Master_WriteByte_Blocking( (uint8_t)onTime, &ACK); // on low bits
        ret &= i2c_Master_WriteByte_Blocking( ((uint8_t)(onTime>>8)), &ACK); // on high bits
        ret &= i2c_Master_WriteByte_Blocking( (uint8_t)OffTime, &ACK); // off low bits
        ret &= i2c_Master_WriteByte_Blocking( ((uint8_t)(OffTime>>8)), &ACK); // off high bits
        ret &= i2c_Master_SendStop();
}



static inline uint8_t PrescalerCalculation(void)
{
    return ( (uint8_t)( round( PCA9685_CLK_FREQ/(4096.0*G_Freq) - 1.0 ) ) );
}