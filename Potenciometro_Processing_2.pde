//Importar una biblioteca.
import processing.serial.*;

//Declarar un valor entero y la clase.
Serial Puerto;
int Valor = 0;

//En esta parte se dan los valores de la ventana,
//del puerto en uso y de un objeto de nuestra clase.
void setup(){
 size(400,400);
 String USB = "COM6";
 Puerto = new Serial(this,USB,9600);
}

//Se declara que cuando vaya aumentando el valor
//que se aumente el brillo dentro de ciertos rangos
//y que si los valores del puerto son mayores a cero
//que los lea y los imprima.
void draw(){
  int Brillo = int  (map(Valor, 0, 1023, 0, 255));
  color Fondo = color(Brillo);
  background(Fondo);
  
 if(Puerto.available() > 0){
  String texto = Puerto.readStringUntil('\n');
  if(texto != null){
   Valor = int(trim(texto)); 
  }
  println(Valor);
 }
}
