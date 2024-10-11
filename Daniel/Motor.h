//
// Created by luisk on 11/10/2024.
//

#ifndef MOTOR_H
#define MOTOR_H



class Motor {
private:
    byte pwmPin;
    byte directionPin1;
    byte directionPin2;
    byte encoderA;
    byte encoderB;

public:
    Motor(byte pwmPin, byte dir1, byte dir2, byte encA, byte encB);
    void setMotor(char dir, int pwm) const;
    void readEncoder() const;
};


#endif //MOTOR_H
