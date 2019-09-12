import processing.serial.*;

boolean EstadoBoton = false;
Serial MiSerial;
color ColorApagado = color(0,0,255);
color ColorEncendido = color(255,0,0);
void setup() {
  size(400, 400);
  String NombrePuerto = Serial.list()[0];
  MiSerial = new Serial(this, NombrePuerto, 9600);
}

void draw() {
  background(0);
  if (EstadoBoton) {
    fill(ColorEncendido);
  } else {
    fill(ColorApagado);
  }
  ellipse(200, 200, 350, 350);
}

void mouseClicked() {
  float distancia = dist(200, 200, mouseX, mouseY);
  if (distancia < 175) {
    EstadoBoton = !EstadoBoton;
    MiSerial.write('a');
  }
}
