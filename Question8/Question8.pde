//fully completed this one!

int grid[][] = 
 {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0,0}, 
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0,0}, 
  {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0,0}, 
  {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0,0}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,0}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1,0}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1,0}, 
  {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0,0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0}
};

int rows = 9, cols = 12; 

void setup() {
  size(600, 600); 
  background(255); 
  noStroke(); 
}

void draw() {
  background(255);
  translate(width/2+170,height/2-100);
  rotate(PI/2);
  scale(30);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (grid[i][j] == 1) {
        fill(0);
      } else {
        fill(255);
      }
rect(i,j,20,20);
      // add something that will draw each cell here
      // you already have a fill call above, so you'll
      // just need to draw a rect at the correct location.
    }  
  }
}
