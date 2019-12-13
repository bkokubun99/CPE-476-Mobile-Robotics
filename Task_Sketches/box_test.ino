#include <Romi32U4.h>

Romi32U4Encoders encoders;
Romi32U4Motors motors;
Romi32U4ButtonA buttonA;

void setup()
{
}

void loop()
{
  if(buttonA.isPressed())
  {
    delay(1000);
    // motors forward.
    motors.setSpeeds(100, 102);
    delay(1375); //forward
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-102, 100); //left rotation
    delay(515);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(100, 102); //forward 
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-102, 100); //left rotation
    delay(515);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(100, 102); //forward 
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-102, 100); //left rotation
    delay(515);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(100, 102); //forward
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-102, 100); //left rotation
    delay(515);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(102, -100); //right rotation
    delay(525);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-100, -102); //backward
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(102, -100); //right rotation
    delay(525);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-100, -102); //backward
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(102, -100); //right rotation
    delay(525);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-100, -102); //backward 
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(102, -100); //right rotation
    delay(525);
    motors.setSpeeds(0,0);
    delay(1000);
    motors.setSpeeds(-100, -102); //backward 
    delay(1375);
    motors.setSpeeds(0,0);
    delay(1000);
  }
}