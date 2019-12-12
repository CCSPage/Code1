//fully completed this one!!

float[] x = new float[10];
float increase;


void setup() {
  size(600, 600);
  increase = 0;
  // give the array values  
  x[0] = 0;
  x[1] = 1;
  x[2] = 2;
  x[3] = 3;
  x[4] = 4;
  x[5] = 5;
  x[6] = 6;
  x[7] = 7;
  x[8] = 8;
  x[9] = 9;

  noStroke();
}

void draw() {
  background(50);
  for (int i = 0; i < x.length; i++) {
    float yval = 30 + i * 60;

    // check to see if you should increment 
    // the value at each position in the array
    // and then draw at that position
    
    if (dist(mouseX, mouseY, x[i], yval)<25) {
      x[i]++;
      fill(255,180,200);
    }else{
      fill(255);
    }

    ellipse(x[i], yval, 50, 50);
  }
}
