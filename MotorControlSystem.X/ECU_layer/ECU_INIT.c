#include "ECU_INIT.h"

/*------Global Variables---------*/
lcd_4bit_t _lcd = {
  .lcd_RS.port = PORTD_INDEX,
  .lcd_RS.pinIndex = pin1,
  .lcd_RS.direction = output,
  .lcd_RS.logic = low,
          
  .lcd_en.port = PORTD_INDEX,
  .lcd_en.pinIndex = pin3,
  .lcd_en.direction = output,
  .lcd_en.logic = low,
  
  .lcd_data[0].port = PORTD_INDEX,
  .lcd_data[0].pinIndex =  pin4,
  .lcd_data[0].direction = output,
  .lcd_data[0].logic = low,
  
  .lcd_data[1].port = PORTD_INDEX,
  .lcd_data[1].pinIndex =  pin5,
  .lcd_data[1].direction = output,
  .lcd_data[1].logic = low,
  
  .lcd_data[2].port = PORTD_INDEX,
  .lcd_data[2].pinIndex =  pin6,
  .lcd_data[2].direction = output,
  .lcd_data[2].logic = low,
  
  .lcd_data[3].port = PORTD_INDEX,
  .lcd_data[3].pinIndex =  pin7,
  .lcd_data[3].direction = output,
  .lcd_data[3].logic = low,
};

keypad_t keypad = {
  .keypad_rows_pins[0].port = PORTB_INDEX,
  .keypad_rows_pins[0].pinIndex = pin0,
  .keypad_rows_pins[0].direction = output,
  .keypad_rows_pins[0].logic = low,
  
  .keypad_rows_pins[1].port = PORTB_INDEX,
  .keypad_rows_pins[1].pinIndex = pin1,
  .keypad_rows_pins[1].direction = output,
  .keypad_rows_pins[1].logic = low,
  
  .keypad_rows_pins[2].port = PORTB_INDEX,
  .keypad_rows_pins[2].pinIndex = pin2,
  .keypad_rows_pins[2].direction = output,
  .keypad_rows_pins[2].logic = low,
  
  .keypad_rows_pins[3].port = PORTB_INDEX,
  .keypad_rows_pins[3].pinIndex = pin3,
  .keypad_rows_pins[3].direction = output,
  .keypad_rows_pins[3].logic = low,
  
  .keypad_col_pins[0].port = PORTB_INDEX,
  .keypad_col_pins[0].pinIndex = pin4,
  .keypad_col_pins[0].direction = input,
  .keypad_col_pins[0].logic = low,
  
  .keypad_col_pins[1].port = PORTB_INDEX,
  .keypad_col_pins[1].pinIndex = pin5,
  .keypad_col_pins[1].direction = input,
  .keypad_col_pins[1].logic = low,
  
  .keypad_col_pins[2].port = PORTB_INDEX,
  .keypad_col_pins[2].pinIndex = pin6,
  .keypad_col_pins[2].direction = input,
  .keypad_col_pins[2].logic = low,
  
  .keypad_col_pins[3].port = PORTB_INDEX,
  .keypad_col_pins[3].pinIndex = pin7,
  .keypad_col_pins[3].direction = input,
  .keypad_col_pins[3].logic = low,
};
/*-----Static functions---------*/




Std_ReturnType app_inisialize(void)
{
    Std_ReturnType ret = mcal_init();
    ret &= lcd_4bit_init(& _lcd);
    ret &= ecu_keypad_inisialize(&keypad);
    ret &= PCA9685_init(50);
    
  return ret;
}
