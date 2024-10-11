// ======================================================================
//                              Librerías
// ======================================================================

#include <util/atomic.h>



// ======================================================================
//                           Variables globales
// ======================================================================
#define FA_P 2               // Encoder A para motor P
#define FA_L 3               // Encoder A para motor L
#define IN1 4                // Dirección para motor P
#define PWR_P 5              // Velocidad para motor P
#define IN2 6                // Dirección para motor P
#define IN3 7                // Dirección para motor L
#define IN4 8                // Dirección para motor L
#define PWR_L 9              // Velocidad para motor L
#define FB_P 10              // Encoder B para motor P
#define FB_L 11              // Encoder B para motor L
volatile int pos_ang_P = 0;  // Posición angular del motor derecho (P)
volatile int pos_ang_L = 0;  // Posición angular del motor izquierdo (L)
unsigned long t_aux = 0;     // Variable auxiliar del tiempo
long delta_t = 1000;         // Intervalo de muestreo en milisegundos
int pos_P_aux = 0;           // Variable auxiliar de posición angular para rueda derecha
int pos_L_aux = 0;           // Variable auxiliar de posición angular para rueda izquierda
double fc = 0.016799961;     // Factor de conversión pulsos/s a rad/s  --> (2*pi)/(Pulsos Por Rev. * Relación Transmisión)
int c = 50;
// ======================================================================
//                                 Setup
// ======================================================================

void setup() {
  // Configuración de pines de motores
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(PWR_P, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(PWR_L, OUTPUT);

  // Configuración de pines de encoders
  pinMode(FA_P, INPUT);
  pinMode(FB_P, INPUT);
  pinMode(FA_L, INPUT);
  pinMode(FB_L, INPUT);

  // Configuración de comunicación y lectura de encoders
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(FA_P), read_encoder_P, RISING);
  attachInterrupt(digitalPinToInterrupt(FA_L), read_encoder_L, RISING);
}



// ======================================================================
//                                 Main
// ======================================================================

void loop() {
  unsigned long time = millis();
  int pos_P = 0;  // Posición en pulsos del motor derecho
  int pos_L = 0;  // Posición en pulsos del motor izquierdo
  int n_P = 0;    // Pulsos por segundo del motor derecho
  int n_L = 0;    // Pulsos por segundo del motor izquierdo

  set_motor('L', 'A', 0);
  set_motor('P', 'A', 0);

  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    pos_P = pos_ang_P;
    pos_L = pos_ang_L;


    if ((time - t_aux) >= delta_t) {
      n_P = pos_P - pos_P_aux;
      n_L = pos_L - pos_L_aux;
      Serial.print("----------------------------------------\n");
      Serial.print("Velocidad angular del motor derecho: ");
      Serial.println(n_P * fc);
      Serial.print("Velocidad angular del motor izquierdo: ");
      Serial.println(n_L * fc);
      t_aux = time;
      pos_P_aux = pos_P;
      pos_L_aux = pos_L;
    }
  }
}