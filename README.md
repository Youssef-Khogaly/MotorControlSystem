
# Motors Control  System




## Brief
servo motor control system using keypad and lcd and pca9685 let user control servo motor angle \
the user chooses which motor to control and which degree (min: 0 degree) (max 180 degree)

## hardware components
1. PIC18f4620 MCU
2. Keypad (4x4)
3. LCD (4x20)
4. PCA9685 : The PCA9685 is an I²C-bus controlled 16-channel  each cahnnel has its own 12-bit resolution individual PWM controller that operates at a programmable frequency from a typical of 24 Hz to 1526
## Software Drivers

MCAL Layer:

1. GPIO driver
2. I2C driver
\
ECU Layer:
1. Keypad driver
2. lcd driver
3. PCA9685 driver 


## Proteus Simulation