int x;

void setup() {
                                       //En estas líneas (1 a la 8) se crean la variable
  size (500, 500);                    //y el tamaño y el respectivo color de la ventana
  background (0);                    //de fondo que vamos a tener.
}
int linea = 10;

void draw() {
  fill (0,255,0);
  background (0);                            //En la parte de en medio linea (10 a 16)
  ellipse (x,250,20,20);                      //se da el movimiento de izquierda a derecha del punto.
  x = x+5;
  if (x>500){
    x*=-1;}
  
  stroke (255);
  line (0, 0, 150, 150);
  line (150, 150, 250, 185);                   //Desde las líneas 18 a la 27, se crean
  line (0,500,350,350);                       //las líneas, los puntos y los pequeños circulos
  line (350,350,370,200);                    //para determinar el valor en (x,y) de la ventana.
  point (150, 150);
  fill (0, 0, 255);
  ellipse(250, 185, 15, 15);
  fill (255,0,0);
  ellipse(370,200, 15, 15);

  line (0, linea, width, linea);                //En estas líneas se da el parametro de 
  linea =linea+5;}                            //la línea de arriba a abajo.
