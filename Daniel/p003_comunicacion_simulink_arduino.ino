// typedef union {
//   float number;
//   uint8_t bytes[4];
// } comboni;

// float mensaje;

// void setup() {
//   Serial.begin(9600);
// }

// void loop() {
//   if (Serial.available() >= 4) {
//     mensaje = recepcion();
//   }
//   transmision(mensaje);
// }

// void transmision(float dato){
//   comboni aux;
//   aux.number = dato;
//   Serial.write('V');
//   for (int i = 0; i < 4; i++) {
//     Serial.write(aux.bytes[i]);
//   }
//   Serial.write('\n');
// }

// float recepcion() {
//   comboni buf;
//   for (int i = 0; i < 4; i++) {
//     while (Serial.available() == 0) {
//     }
//     buf.bytes[i] = Serial.read();
//   }
//   return buf.number;
// }
