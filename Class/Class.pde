float x;
float y;
float timer;

mousePos p;

void setup() {
  size(800, 800);
  background(255, 240, 230);
  noStroke();
  timer=0;
  rectMode(CENTER);
  p=new mousePos();
}

void draw() {
  p.update();
  p.display();
  noStroke();
  x += 10;
  y += 10;
  x = random(-10, 800);
  y = random (-10, 800);

  for (int i = 0; i <= 800; i+= 230) 
  {
    fill(i, random(150, 200), 150, random(30, 200));
    Shapes();
  }
  timer ++; 
  if (timer>=400) {
    fill(random(0, 150), random(70, 150), random(150, 200), random(60, 80)); 
    Shapes();
  }

  if (mouseX>=width/2) {
    fill(random(0, 255), 0, 0, 6);
    rect(width/2, height/2, width, height);
  } else {
  }
  fill(255, 3);
  rect(width/2, height/2, width, height);
}

void Shapes() {
  float d = map(mouseX, 0, width, 2, 12);
  rect(x, y, 10, 800);
  ellipse(x+5, y-25, 8, 8);
  ellipse(x+400, y+50, d, d);
  ellipse(x+100, y+2, d, d);
  ellipse(x+200, y-40, d, d);
}

////////////////////////////////////////////////////////////////////////////////////

class mousePos {
  float x;
  float y;
  float r;

  void update() {
    x=random(0, width);
    y=random(0, height);
    r++;
    if (r>=50) {
      r*=-1;
    }
    if (r<=0) {
      r++;
    }

    if (mousePressed) {
      for (int i=0; i<width; i++) {
        p.display();
      }
    }
  }
  void display() { 

    fill(255,100,100,5);
    rect(x, y, r, r, 8);
  }
}
