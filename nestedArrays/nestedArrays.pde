float [][] c = new float [100][100];
int step;
void setup() {
  size(600,600);
  step = width/c.length;
  for (int i = 0; i<c.length; i++) {
    for (int j = 0; j<c[0].length; j++) {
      c[i][j] = random(255);
    }
  }
}

void draw() {
  for (int i = 0; i<c.length; i++) {
    for (int j = 0; j<c[0].length; j++) {
      float x = map(i,0,c.length,0,width);
          float y = map(j,0,c[0].length,0,height);
          fill(c[i][j]);
      rect(x,y,step,step);
    }
  }
}
