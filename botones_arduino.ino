const int boton = 2;
const int boton2 = 10;

void setup (){
  Serial.begin (9600);
  pinMode (boton, INPUT);
  pinMode (boton2, INPUT);
}

void loop (){
  if (digitalRead (boton) == 1){
    Serial.println ("B1");
  }
    if (digitalRead (boton2) == 1){
    Serial.println ("B2");
}
  delay (100);
}
