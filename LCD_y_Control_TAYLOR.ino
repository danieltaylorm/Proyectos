#include <LiquidCrystal.h>         //Se incluyen ambas librerías
#include <IRremote.h>             //para la LCD y el control.

int receptor = 10;                 //Receptor de señal de control.

LiquidCrystal lcd (12,11,4,5,6,7);     //Conexiones para la LCD.

IRrecv irrecv(receptor);             //Clase del Receptor 
decode_results codigo;              //y código de la clase.

void setup(){
  lcd.begin(16,2);
  Serial.begin(9600);                  //Iniciar las posiciones de la LCD
  irrecv.enableIRIn();                //y el estado del control. 
}
void loop(){
  if (irrecv.decode(&codigo)){
  Serial.println(codigo.value, HEX);
  if (codigo.value==0xFF6897){           //El void loop tiene la señal e 
  analogWrite(9,80);                    //indicación de que si el control
  lcd.setCursor(4,0);                  //manda la señal del botón "0"
  lcd.print("Hola");                  //que escriba "Hola" en las posiciones
  delay (3000);                      //antes especificadas y por último
  lcd.clear();                      //limpiar la LCD de información.
  }
 }
}
