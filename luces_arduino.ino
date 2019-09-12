int LedReal= 7;
int LedReal2= 6;
int LedReal3= 5;
int LedPin = 13;

boolean EstadoLed = false;

void setup() {
  Serial.begin(9600);
  pinMode(LedPin, OUTPUT);
  digitalWrite(LedPin, EstadoLed);
  pinMode(LedReal, OUTPUT);
  digitalWrite(LedReal,EstadoLed) ;
  pinMode(LedReal2, OUTPUT);
  digitalWrite(LedReal,EstadoLed) ;
  pinMode(LedReal3, OUTPUT);
  digitalWrite(LedReal,EstadoLed) ; 
}

void loop() {

  if (Serial.available()) {
    char Letra = Serial.read();
    if (Letra == 'a') {
      EstadoLed = !EstadoLed;
    }
    digitalWrite(LedPin, EstadoLed);
    digitalWrite(LedReal, EstadoLed);
    digitalWrite(LedReal2, EstadoLed);
    digitalWrite(LedReal3, EstadoLed);
  }
}
