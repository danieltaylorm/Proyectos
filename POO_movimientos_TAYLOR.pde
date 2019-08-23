class Spot {
float x, y;
float diameter;
float speed;                                    //De la línea 1 a la 5 se declara la clase y algunas variables (float e int).
int direction = 5;
Spot(float xpos, float ypos, float dia, float sp) {
x = xpos;
y = ypos;                                                //En estas líneas se dan los valores de "x" y "y"
diameter = dia;                                         //que son así mismo, sus posiciones.
speed = sp;
}
void move() {
x += (speed * direction);
if ((x > (width - diameter / 2)) || (x < diameter / 2)) {
direction *= -1;                          
}                                                   //De la línea 12 a la 20 se declaran las instrucciones
}                                                  //para movimientos de las variables ya dadas anteriormente
void display() {                                  //que son "x" y "y" y las medidas y posiciones del rectangulo.
rect (x,y,diameter,diameter);
}
}
Spot sp1, sp2, sp3, sp4;
void setup() {
size(300,300);
smooth();                                                 //De las lineas 22 a la 30 se dan las instrucciones de 
noStroke();                                              //las medidas y posiciones iniciales de los "spots" o 
sp1 = new Spot(50, 210, 40, 0.5);                       //"sp" osea, los rectangulos para así saber dónde van 
sp2 = new Spot(50, 80, 10, 2.0);                       //a estar al compilar y qué medida tendran c/u de ellas.
sp3 = new Spot(50, 135, 30, 1.5);
sp4 = new Spot(50, 100, 20,1);
}
void draw() {
fill(0);
rect(0, 0, width, height);             
fill(0,0,255);                        
sp1.move();                            //En estas líneas se dibujan el fondo y las ordenes
sp2.move();                           //que tendran los rectangulos así como también sus colores
sp3.move();                          //para que de esta forma se presenten y se muevan en el orden.
sp4.move();
sp1.display();
sp2.display();
sp3.display();
sp4.display();
}
