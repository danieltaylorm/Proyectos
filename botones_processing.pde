import processing.serial.*;

Serial myPort;
String portStream;

int B1in = 0;
int B2in = 0;

void setup (){
size (300,300);
background (0);
stroke (160);
fill (50);
String portName = "COM6";
myPort = new Serial (this, portName, 9600);
myPort.bufferUntil ('\n');
}

void draw (){
  if (portStream!= null){
  B1in = int (portStream.substring (1,2));
  B2in = int (portStream.substring (1,2));
  
  if (B1in == 1){
    fill (0,255,0);
  }
  else{
    fill (255,0,0);
  }
  rect (70,70,160,160);

  if (B2in == 1){
    fill (0,255,0);
  }
  else{
    fill (255,0,0);
  }
  rect (70,70,160,160);
  
}
}


void serialEvent (Serial myPort){
  portStream = myPort.readString();
}
