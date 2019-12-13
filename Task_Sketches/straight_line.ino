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
    // Run motors forward.
    motors.setSpeeds(102, 100);
    delay(9600);
    motors.setSpeeds(0,0);
  }
}