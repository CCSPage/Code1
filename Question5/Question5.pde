//didn't get to it unfortunately

float amplitude = 75;
float theta = 0;
float increment = TWO_PI/300;

void setup() {
  size(600, 400);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
  
  theta = (theta + increment) % TWO_PI;

  fill(80);

  pushMatrix();
  translate(width/3, height/2);
  rotate(theta);
  pushMatrix();
  translate(amplitude, 0);
  rect(0, 0, 50, 50);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(2* width/3, height/2);
  rotate(-theta);
  pushMatrix();
  translate(-amplitude, 0);
  rect(0, 0, 50, 50);
  popMatrix();
  popMatrix();
}
