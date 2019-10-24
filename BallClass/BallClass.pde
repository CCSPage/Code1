Ball[] b = new Ball[10];
Player p;
int score;
void setup() {
  size(600, 600);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(random(width), random(100, 400));
  }
  p = new Player(0, 0);
  println(p.x);
  score = 100;
}

void draw() {
  background(255,200,210);
  fill(0);
  textSize(20);
  text("Points = "+score, 50, 50);
  for (int i = 0; i < b.length; i++) {
    b[i].update();
    b[i].display();
    p.doThis();
    p.drawThis();

    if (dist(b[i].x, b[i].y, p.x, p.y) < b[i].r+p.r) {
      b[i].c = 0;
      score--;
    } else {
      b[i].c = 255;
    }
    if (score < 1) {

      background(0);
      fill(255);

      text("YOU LOSE!!!!! Hit any key to try again...", 100, height/2);
    }
  }
}

////////////////////////////////////////////////////////////////////////////////////
class Ball {
  float x;
  float y;
  float dx;
  float dy;
  float r;
  float c;

  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-5, 5);
    r = 40;
    c = 200;
  }

  void update() {
    if (x > width - r || x < r) {
      dx *= -1;
    }
    if (y > height - r || y < r) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }

  void display() {
    fill(c,80);
    ellipse(x, y, r * 2, r * 2);
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////


class Player {
  float x;
  float y;
  float d;
  float r;

  Player(float X, float Y) {
    x= X;
    y= Y;
    r =10;
  }
  void doThis() {
    x=mouseX;
    y=mouseY;
  }
  void drawThis() {
    fill(210, 255, 200, 50);
    ellipse(x, y, r*2, r*2);
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////
void keyPressed(){
  score = 100;
  background(0);
}
