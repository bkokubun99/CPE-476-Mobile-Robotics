#include <Romi32U4.h>

Romi32U4Encoders encoders;
Romi32U4Motors motors;
Romi32U4ButtonA buttonA;

void setup()
{
  buttonA.waitForButton();
  delay(1000);
}

void loop()
{
  motors.setSpeeds(100, 100);
  if (encoders.getCountsLeft() > encoders.getCountsRight())
  {
    motors.setSpeeds(100, 100*4);
  }
  else if (encoders.getCountsLeft() < encoders.getCountsRight())
  {s
    motors.setSpeeds(100*4, 100);
  }
}