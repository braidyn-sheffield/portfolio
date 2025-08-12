#define Servo1 7
#define Servo2 5
#define Servo3 6

#define S1Pot A0
#define S2Pot A1
#define S3Pot A3

int position1 = 0;
int position2 = 0;
int position3 = 0;

#include <Servo.h>

Servo servo1;
Servo servo2;
Servo servo3;

void setup()
{
  servo1.attach(Servo1);
  servo2.attach(Servo2);
  servo3.attach(Servo3);
  
  pinMode(S1Pot, INPUT);
  pinMode(S2Pot, INPUT);
  pinMode(S3Pot, INPUT);
}

void loop()
{
  position1 = map(analogRead(S1Pot),0,1023,0,180);
  position2 = map(analogRead(S2Pot),0,1023,0,180);
  position3 = map(analogRead(S3Pot),0,1023,0,180);
  
  servo1.write(position1);
  servo2.write(position2);
  servo3.write(position3);
}





