// ======================================================================
//                           Funciones auxiliares
// ======================================================================

void set_motor(char llanta, char dir, int pwm) {
  if (llanta == 'L') {                             // Motor izquierdo
    analogWrite(PWR_L, pwm);
    if (dir == 'A') {                              // Sentido horario
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
    } else {                                       // Sentido antihorario
      digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
    }
  } else {                                         // Motor derecho
    analogWrite(PWR_P, pwm);
    if (dir == 'A') {                              // Sentido horario
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
    } else {                                       // Sentido antihorario
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
    }
  }
}

void read_encoder_P(){
  int b = digitalRead(FB_P);
  if(b > 0){
    pos_ang_P--;
  }
  else{
    pos_ang_P++;
  }
}

void read_encoder_L(){
  int b = digitalRead(FB_L);
  if(b > 0){
    pos_ang_L++;
  }
  else{
    pos_ang_L--;
  }
}