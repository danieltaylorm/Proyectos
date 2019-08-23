int[] array = new int[6];
void setup() {
  size(400, 350);                                            
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(10, 100);
  }
  frameRate(7);
}
int i=0;
int temp;
void draw() {
  background(150);

  for (int j=1; j<array.length; j++) {
    if (array[i]<array[j]) {
      temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    stroke(0);

    fill(0, 0, random(255));
    rect(60*j, j+300, 25, -array[j]);
    fill(255);
    text(array[j], 60*j, 50+j);
  }
  i++;  
  if (i>array.length-1)
    noLoop();
}
