//couldn't figure out in time. 
//Definitely need to review how to properly implement 2D arrays

int cols = 10;
int rows = 10;
float[][] myArray = new float[cols][rows];

//float[] x = new float[cols];
//float[] y = new float[cols];
float[] colors = new float[cols];
float[] rate = new float[cols];

void setup() {
  size(600, 600);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      map(i, 0, cols - 1, 100, 500);
      map(j, 0, cols - 1, 100, 500);
      colors[i] = random(255);
      rate[i] = random(-1, 1);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (colors[i] > 255 || colors[i] < 0) {
        rate[i] *= -1;
      }

      colors[i] += rate[i];

      noStroke();
      fill(colors[i]);
      //myArray[i][j] = ellipse(i, j, 25, 25);
    }
  }
}
