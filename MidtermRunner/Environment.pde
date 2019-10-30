Clouds[] c = new Clouds[10];

void Cloud(float x, float y) {
  noStroke();
  fill(75, 64, 103);
  ellipse(x, y, 100, 70);
  ellipse(x-60, y, 100, 70);
  ellipse(x-30, y-30, 80, 70);


  ellipse(x+300, y+200, 80, 70);
  ellipse(x+250, y+200, 80, 70);
  ellipse(x+200, y+200, 90, 70);
  ellipse(x+250, y+170, 80, 70);
}

class Clouds {
  float x;
  float y;
  float dx;

  Clouds(float _x, float _y) {
    x = _x;
    y= _y;
    dx = random(-2, 0);
  }
  void update() {
    if (x < -200) {
      x=random(700, 900);
      y = random(-100, 500);
    }
    x += dx;
  }
  void display() {
    Cloud(x, y);
  }
}
