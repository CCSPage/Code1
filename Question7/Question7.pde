//88% finished this one! 
//I have to fix the distance between buttons and mouse because
//the buttons only work properly if you click DIRECTLY in the center
//also the isPressed bool only seems to be triggered on the last button which is odd

Button b1;
Button b2;
Button b3;
Button b4;

float squarex, squarey;

void setup() {
  size(650, 650);
  b1 = new Button(100, 600, 100, 50);
  b2 = new Button(250, 600, 100, 50);
  b3 = new Button(400, 600, 100, 50);
  b4 = new Button(550, 600, 100, 50);

  squarex = width/2;
  squarey = height/2;
}


void draw() {
  background(250);

  b1.display();
  b2.display();
  b3.display();
  b4.display();


  rectMode(CENTER);
  fill(255,0,0);
  rect(squarex, squarey, 50, 50);
}

void mousePressed() {
  b1.handleInput(mouseX, mouseY);
  b2.handleInput(mouseX, mouseY);
  b3.handleInput(mouseX, mouseY);
  b4.handleInput(mouseX, mouseY);
}


class Button {
  float x;
  float y;
  float w;
  float h;
  boolean isPressed = false;

  Button(float _x, float _y, float _w, float _h) {
    x = _x - _w/2;
    y = _y - _h/2;
    w = _w;
    h = _h;
  }

  void handleInput(float xPos, float yPos) {
    // check to see if the mouse is inside the rect here,
    if (dist(xPos, yPos, b1.x, b1.y)<80) {
      isPressed=true;
     squarex++;
      println("PLEASE");
    } else {
      isPressed=false;
    }
    if (dist(xPos, yPos, b2.x, b2.y)<80) {
      isPressed=true;
       squarex--;
       println("WORK");
    }else {
      isPressed=false;
    }
    if (dist(xPos, yPos, b3.x, b3.y)<80) {
      isPressed=true;
       squarey++;
       println("I'M");
    }else {
      isPressed=false;
    }
    if (dist(xPos, yPos, b4.x, b4.y)<80) {
      isPressed=true;
       squarey--;
       println("BEGGING");
    }else {
      isPressed=false;
    }
    // and change the value of isPressed appropriately.
  }

  void display() {
    rectMode(CORNER);
    if (isPressed) {
      fill(150);
    } else {
      fill(200);
    }
    rect(x, y, w, h);
  }
}
