#include <Servo.h>
  
Servo servo1;

int joyX = 0;
int joyY = 1;
  
int servoVal;
  
void setup() 
{
  servo1.attach(3);
}
  
void loop()
{
  
  servoVal = analogRead(joyX);
  servoVal = map(servoVal, 0, 1023, 0, 180);
  servo1.write(servoVal);

  delay(15);  
}
