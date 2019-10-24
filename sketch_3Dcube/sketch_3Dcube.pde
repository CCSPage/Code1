
void setup() {
  size(800, 800, P3D);
  background(9, 11, 13);
  lights();
}

void draw() {
  fill(9, 11, 13);
  stroke(255);
  pushMatrix();
  for (int i = 0; i < width; i+= 1) {
    translate(width, 300);
    rotateY(1.25);
    rotateX(-0.4);
    box(60);
  }
  popMatrix();

  pushMatrix();
  for (int i = 0; i < width; i+= 1) {
    translate(120, 240);
    rotateY(1.2);
    rotateX(0.4);
    box(90);
  }
  popMatrix();

  pushMatrix();
  for (int i = 0; i < width; i+= 1) {
    translate(500, 180);
    rotateY(1.25);
    rotateX(-0.2);
    box(80);
  }
  popMatrix();
}
