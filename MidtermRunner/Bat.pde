Bats[] b = new Bats[10];

void Bat(float x, float y) {
  noStroke();
  fill(32, 21, 60);
  ellipse(x, y, 15, 10);
  ellipse(x+15, y-2, 18, 10);
  ellipse(x-15, y-2, 18, 10);
  fill(72, 61, 100);
  ellipse(x-20, y+2, 8, 7);
  ellipse(x-12, y+2, 8, 7);
  ellipse(x+20, y+2, 8, 7);
  ellipse(x+12, y+2, 8, 7);
}

class Bats {
  float x;
  float y;
  float dx;
  float dy;
  Bats(float _x, float _y) {
    x = _x;
    y= _y;
    dx = random(-2, -8);
    dy = random(-0.2f, 0.2f);
  }
  void update() {
    if (x < -10) {
      x=random(610, 620);
      y = random(100, 300);
    }
    x += dx;
    y+= dy;
    
  }
  void display() {
    Bat(x, y);
  }
}
