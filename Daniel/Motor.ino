// class Motor {
//   private:
//     byte PWM;              // Pin para el PWM (control de velocidad)
//     byte EN1;              // Pin para la dirección 1
//     byte EN2;              // Pin para la dirección 2
//     byte Fase_A;           // Pin para el encoder fase A
//     byte Fase_B;           // Pin para el encoder fase B

//   public:
//     // Constructor para inicializar los pines del motor
//     Motor(byte pwmPin, byte dir1, byte dir2, byte encA, byte encB) {
//       this->PWM = pwmPin;
//       this->EN1 = dir1;
//       this->EN2 = dir2;
//       this->Fase_A = encA;
//       this->Fase_B = encB;

//       // Configurar los pines como salida/entrada
//       pinMode(pwmPin, OUTPUT);
//       pinMode(EN1, OUTPUT);
//       pinMode(EN2, OUTPUT);
//       pinMode(Fase_A, INPUT);
//       pinMode(Fase_B, INPUT);
//     }

//     // Método para controlar la dirección y velocidad del motor
//     void set_motor(char dir, int pwm) {
//       analogWrite(PWM, pwm);  // Establecer el PWM (velocidad)

//       if (dir == 'A') {          // Sentido horario (avanzar)
//         digitalWrite(EN1, LOW);
//         digitalWrite(EN2, HIGH);
//       } else {                   // Sentido antihorario (retroceder)
//         digitalWrite(EN1, HIGH);
//         digitalWrite(EN2, LOW);
//       }
//     }

//     // Método para leer el estado de los encoders (si es necesario)
//     // void read_encoder() {
//     //   int encoderValueA = digitalRead(Fase_A);
//     //   int encoderValueB = digitalRead(Fase_B);
      
//     //   // Aquí podrías hacer algo con los valores del encoder
//     //   // como contar pulsos para determinar velocidad o posición.
//     //   Serial.print("Encoder A: ");
//     //   Serial.println(encoderValueA);
//     //   Serial.print("Encoder B: ");
//     //   Serial.println(encoderValueB);
//     // }
// };
