#include <util/atomic.h>
#define ENCODER_A 2 
#define ENCODER_B 10

const int E1Pin = 5;
const int M1Pin1 = 4;
const int M1Pin2 = 6;

typedef struct{
  byte enPin;
  byte directionPin1;
  byte directionPin2;
}Motor;

const Motor motor = {E1Pin, M1Pin1, M1Pin2};


void setup(){
  Serial.begin(9600);
  pinMode(ENCODER_A, INPUT);
  pinMode(ENCODER_B, INPUT);
  pinMode(motor.enPin, OUTPUT);
  pinMode(motor.directionPin1, OUTPUT);
  pinMode(motor.directionPin2, OUTPUT);
}

void loop(){
    digitalWrite(motor.directionPin1, LOW);
    digitalWrite(motor.directionPin2, HIGH);
    digitalWrite(motor.enPin, 200);
    imprimir_cuadratura();
}

void imprimir_cuadratura(){
  int a = digitalRead(ENCODER_A);
  int b = digitalRead(ENCODER_B);
  Serial.print(a*5);
  Serial.print(" ");
  Serial.println(b*5);
}