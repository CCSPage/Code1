void setup() {
  size(1480, 1120);
}

void draw() {
  if (mousePressed) {
    fill(400,10,50,4);
  } else {
    fill(300,2,30,4);
  }
  rect(mouseX, mouseY, 80, 80);
}
