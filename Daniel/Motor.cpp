//
// Created by luisk on 11/10/2024.
//

#include <Arduino.h>
#include "Motor.h"

Motor::Motor(byte pwmPin, byte dir1, byte dir2, byte encA, byte encB) {
    this->pwmPin = pwmPin;
    this->directionPin1 = dir1;
    this->directionPin2 = dir2;
    this->encoderA = encA;
    this->encoderB = encB;

    pinMode(pwmPin, OUTPUT);
    pinMode(directionPin1, OUTPUT);
    pinMode(directionPin2, OUTPUT);
    pinMode(encoderA, INPUT);
    pinMode(encoderB, INPUT);
}

void Motor::setMotor(char dir, int pwm) const {
    analogWrite(pwmPin, pwm);
    if (dir == 'A') {
        digitalWrite(directionPin1, LOW);
        digitalWrite(directionPin2, HIGH);
    } else {
        digitalWrite(directionPin1, HIGH);
        digitalWrite(directionPin2, LOW);
    }
}

void Motor::readEncoder() const {
    int encoderValueA = digitalRead(encoderA);
    int encoderValueB = digitalRead(encoderB);

    Serial.print("Encoder A: ");
    Serial.println(encoderValueA);
    Serial.print("Encoder B: ");
    Serial.println(encoderValueB);
}
