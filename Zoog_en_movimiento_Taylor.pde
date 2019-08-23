int x = 100;
int y = 100;
int w = 60;
int h = 60;
int eyeSize = 16;
int speed = 1;

void setup() {
  size(300,200);
}

void draw() {
  x = x + speed;

  if ((x > width) || (x < 0)) {
    speed = speed * -1;
  }

  background(255);

  ellipseMode(CENTER);
  rectMode(CENTER);

  stroke(0);
  fill(175);
  rect(x,y,w/5,h*2);

  fill(255);
  ellipse(x,y-h/2,w,h);

  fill(0);
  ellipse(x-w/3+1,y-h/2,eyeSize,eyeSize*2);
  ellipse(x+w/3-1,y-h/2,eyeSize,eyeSize*2);

  stroke(0);
  line(x-w/12,y + h,x-w/4,y + h + 15);
  line(x+w/12,y + h,x + w/4,y + h + 15);
}
