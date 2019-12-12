//ran out of time to figure out how to instantiate without turning the elipses into a class

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  drawSystem(mouseX-150,mouseY,50,50);
}

void drawSystem(float xloc, float yloc, int size, int speed){
  pushMatrix();
  translate(width/2, height/2);
  rotate(frameCount * .05);
  ellipse(xloc, yloc, size, size);
  popMatrix();
  pushMatrix();
  translate(150, 0);
  ellipse(xloc, yloc, size+50, size+50);
  popMatrix();
 
}

void mousePressed(){
drawSystem(mouseX-150,mouseY,50,50);
}
