// Controls two PPM motor controllers using the Servo library

#include <Servo.h>

Servo leftMotor;  // Servo object for left motor
Servo rightMotor; // Servo object for right motor

int in[4];
int i;

void setup()
{
  leftMotor.attach(9);
  rightMotor.attach(10);
  leftMotor.writeMicroseconds(1500);  // Sets motor to idle
  rightMotor.writeMicroseconds(1500); // Sets motor to idle

  Serial.begin(9600);
}

void loop()
{
  if (Serial.available() > 0)
  {
    int c = Serial.read();
    if(c == 'L')
    {
      for (i = 0; i < 4; i++)
      {
        delay(3);
        in[i] = Serial.read();
      }
      int s = (in[0] - 48) * 1000;
      s += (in[1] - 48) * 100;
      s += (in[2] - 48) * 10;
      s += (in[3] - 48);
      leftMotor.writeMicroseconds(s);
    } else if(c == 'R')
    {
      for (i = 0; i < 4; i++)
      {
        delay(3);
        in[i] = Serial.read();
      }
      int s = (in[0] - 48) * 1000;
      s += (in[1] - 48) * 100;
      s += (in[2] - 48) * 10;
      s += (in[3] - 48);
      rightMotor.writeMicroseconds(s);
    }
    
    int leftValue = leftMotor.readMicroseconds();
    int rightValue = rightMotor.readMicroseconds();

    Serial.print("L:");
    Serial.print(leftValue);
    Serial.print(";R:");
    Serial.print(rightValue);
    Serial.print("\n");
    delay(20);
  }
}

