/* 
 * File:   app.c
 * Author: yossef
 *
 * Created on January 30, 2023, 11:16 PM
 */

#include "app.h"


uint16_t angle;
void main(void)
{
    Std_ReturnType ret;
    uint8_t kpdVal = ECU_KPD_NOTPRESSES_VAL;
    uint8_t temp = 0;
    uint8_t ServoChannel = 0xff;
    uint8_t l_counter = 0; //general purupose counter
    uint8_t l_counter2 = 0; //general purupose counter 
    ret = app_inisialize();
    
    lcd_welcomeMessage();
    
    while(1)
    {
       angle = 0 ; l_counter = 1 ; l_counter2 = 0; ServoChannel = 0xff;
       lcd_MainScreen();
       kpdVal = ECU_KPD_NOTPRESSES_VAL;
       while(kpdVal == ECU_KPD_NOTPRESSES_VAL || kpdVal > 4 || kpdVal < 1)
       {
           ret = ecu_keypad_scan_value(&keypad , &temp);
           __delay_ms(100);
           ret = ecu_keypad_scan_value(&keypad , &kpdVal);
           kpdVal = (kpdVal == temp) ? kpdVal : ECU_KPD_NOTPRESSES_VAL;
           
       }
       ServoChannel = kpdVal;
       lcd_ServoAngleScreen();
       kpdVal = ECU_KPD_NOTPRESSES_VAL ;
       while(kpdVal != '=' )
       {
           kpdVal = ECU_KPD_NOTPRESSES_VAL;
           /* handle button debounc*/
           ret = ecu_keypad_scan_value(&keypad , &temp);
           __delay_ms(100);
           ret = ecu_keypad_scan_value(&keypad , &kpdVal);
           kpdVal = (kpdVal == temp) ? kpdVal : ECU_KPD_NOTPRESSES_VAL;
           
           if(kpdVal >= 0 && kpdVal <= 9 && l_counter2 <3)
           {
               angle = (angle*10)+kpdVal;
               ret = lcd_4bit_send_char_pos(&_lcd ,NUM_TO_CHAR(kpdVal) , ROW4 , l_counter++);
               l_counter2++;
           }
           else if (kpdVal == 'c')
           {
               angle /= 10.0;
               l_counter = (l_counter <= 1) ? 1 : l_counter-1 ;
               l_counter2 = (l_counter2 <= 0) ? 0 : l_counter2-1 ;
               ret = lcd_4bit_send_char_pos(&_lcd ,' ' , ROW4 , l_counter);
               ret = lcd_4bit_setCursor(&_lcd,ROW4,l_counter);
           }
       }
           ServoControlHandler(ServoChannel,angle);
       
    }
}


void lcd_welcomeMessage(void)
{
    uint8_t lcd_buffer[21] = "Welcome";
     Std_ReturnType ret;
    ret = lcd_4bit_send_str_pos(&_lcd ,lcd_buffer, ROW1 , 7);
    
    memset(lcd_buffer,0,21);
    snprintf(lcd_buffer , 21 , "Motor Control System");
    ret = lcd_4bit_send_str_pos(&_lcd ,lcd_buffer, ROW2 , 1);
    __delay_ms(2000);
}

void lcd_MainScreen(void)
{
    uint8_t lcd_buffer[21] = "Select Motor: ";
    Std_ReturnType ret = lcd_4bit_send_command(&_lcd , _LCD_CLEAR);
    ret = lcd_4bit_send_str_pos(&_lcd , lcd_buffer, ROW1 , 1);
    memset(lcd_buffer,0,21);
    snprintf(lcd_buffer , 21 , "1-Motor1  2-Motor2"); 
    ret = lcd_4bit_send_str_pos(&_lcd ,lcd_buffer, ROW2 , 1);
    memset(lcd_buffer,0,21);
    snprintf(lcd_buffer , 21 , "3-Motor3  4-Motor4"); 
    ret = lcd_4bit_send_str_pos(&_lcd ,lcd_buffer, ROW3 , 1);
    
}

void lcd_ServoAngleScreen(void)
{
    
     uint8_t lcd_buffer[21] = "Min Angle 0";
     Std_ReturnType ret = lcd_4bit_send_command(&_lcd , _LCD_CLEAR);
     ret = lcd_4bit_send_str_pos(&_lcd , lcd_buffer, ROW1 , 1);
     
     memset(lcd_buffer,0,21);
     snprintf(lcd_buffer , 21 , "Max Angle 180");
     ret = lcd_4bit_send_str_pos(&_lcd , lcd_buffer, ROW2 , 1);
     
     memset(lcd_buffer,0,21);
     snprintf(lcd_buffer , 21 , "Set Motor angle: ");
     ret = lcd_4bit_send_str_pos(&_lcd , lcd_buffer, ROW3 , 1);
}
void lcd_AngleErrorScreen(void)
{
    uint8_t lcd_buffer[21] = "Error Invaild Angle";
    Std_ReturnType ret = lcd_4bit_send_command(&_lcd , _LCD_CLEAR);
    ret = lcd_4bit_send_str_pos(&_lcd , lcd_buffer, ROW1 , 1);
    __delay_ms(1000);
}
void ServoControlHandler(uint8_t channel , uint16_t angle)
{
    if( angle <= 180)
    {
       Std_ReturnType ret = PCA9685_SetServoAngle_180(channel-1 , (uint8_t)angle); 
    }
    else
    {
        lcd_AngleErrorScreen();
    }
    
}