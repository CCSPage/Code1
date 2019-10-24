float score;
float Up;
float Side;
void setup() {
  size(600, 400);
  rectMode(CENTER);
  Up=0;
  Side=0;
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bats(random(width), random(100, 400));
  }
for (int j = 0; j < b.length; j++) {
  c[j] = new Clouds(random(width), random(100, 400));
}
}

void draw() {
  background(72, 61, 100); 
  //  StartScreen(width/2, height/2);
  textSize(15);
  fill(104, 93, 132);
  text("Score: "+score, 50, 50);
  text("Score: "+score, 50, 51);
  for (int j = 0; j < c.length; j+=2) {
    c[j].update();
    c[j].display();
  }
  for (int i = 0; i < b.length; i+=2) {
    b[i].update();
    b[i].display();
  }
  Ghost(width/2+Side, height/2+Up);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Up-=30;
    } else if (keyCode == DOWN) {
      Up+=30;
    } else if (keyCode == RIGHT) {
      Side+=30;
    } else if (keyCode == LEFT) {
      Side-=30;
    }
  } else {

    Up=0;
  }
}
