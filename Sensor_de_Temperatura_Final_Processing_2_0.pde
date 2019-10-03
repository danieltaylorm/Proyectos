import processing.serial.*;

Serial Puerto;
int Temp = 0;

void setup() {
  size(300, 300);
  String USB = "COM6";
  Puerto = new Serial(this, USB, 9600);
}

void draw() {
  if (Puerto.available() > 0) {
Temp = Puerto.read();
  }
  if (Temp > 10 && Temp < 20){
  background (0,0,255);
  }
  if (Temp > 20 && Temp <50){
  background (255,0,0);
  }
  println(Temp);
}
