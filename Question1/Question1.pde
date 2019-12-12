color col1; 
color col2;
String str = "Click to refresh the screen!";
//I'm going to tell you at the top of each sketch how far I made it

//I fully completed this one!


void setup() {
  size(600, 600);
  drawGradient();
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(mouseX, mouseY);
  fill(255, 10);
  noStroke();
  rotate(frameCount * 0.1);
  float s = sin(frameCount * 0.01) * 100;
  rect(0, 0, s, s);
  popMatrix();
  fill(255);
  textSize(30);
  text(str, 30, 50);
}

void drawGradient() {
  col1 = color(random(255), random(255), random(255));
  col2 = color(random(255), random(255), random(255));
  
  for (int i = 0; i < width; i++) {
    float normalized = map(i, 0, width, 0, 1);
    color c = lerpColor(col1, col2, normalized);
    stroke(c);
    line(i, 0, i, height);
  }
}

void mousePressed() {
  drawGradient();
}
