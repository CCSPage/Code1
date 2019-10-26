void RightSide(float x, float y) {
  fill(242, 165, 153);
  rect(x, y, width, height);
  textSize(30);
  fill(252, 235, 232);
  text("TRICK or TREAT", x-110, y-20);
  fill(255);
  rect(width/2, height/2+110, 5, 150);
  fill(250, 97, 97);
  ellipse(width/2, height/2+60, 70, 70);
  if (mousePressed) {
    fill(242, 165, 153);
    ellipse(width/2+30, height/2+60, 20, 20);
    ellipse(width/2+30, height/2+40, 20, 25);
  }
}

void LeftSide(float x, float y) {
  fill(27, 27, 28);
  rect(x, y, width, height);
  textSize(30);
  fill(174, 174, 176);
  text("HAUNTED FOREST", x-110, y-20);
  fill(102, 77, 62);
  rect(308, 350, 10, 70, 4); 
  fill(67, 89, 71);
  triangle(275, 305, 308, 230, 341, 305);
  triangle(270, 345, 308, 270, 346, 345);
  if (mousePressed) {
    fill(255);
    ellipse(300,320,10,10);
    ellipse(315,320,10,10);
    fill(0);
       ellipse(300,320,5,5);
    ellipse(315,320,5,5);

  }
}

void UpSide(float x, float y) {
  fill(47, 59, 71);
  rect(x, y, width, height);
  textSize(30);
  fill(135, 147, 161);
  text("MIDNIGHT MOON", x-130, y+40);
  fill(252, 245, 222);
  ellipse(width/2, height/2-100, 100, 100);
  fill(47, 59, 71);
  ellipse(width/2+50, height/2-100, 100, 100);
  if (mousePressed) {
    for (int i =50; i<width; i+=50) {
      for (int j =50; j<height; j+=50) {
        fill(255, 20);
        ellipse(i, j, 2, 10);
        ellipse(i, j, 10, 2);
      }
    }
  }
}

void DownSide(float x, float y) {
  fill(95, 107, 92);
  rect(x, y, width, height);
  textSize(30);
  fill(178, 189, 175);
  text("PUMPKIN PATCH", x-110, y-20);

  fill(109, 133, 93);
  rect(width/2, height/2+60, 10, 50, 2);
  fill(237, 173, 116);
  ellipse(width/2, height/2+110, 100, 100);
  if (mousePressed) {
    fill(255, 219, 102);
    ellipse(width/2-20, height/2+110, 10, 10);
    ellipse(width/2+20, height/2+110, 10, 10);
  } else {
    fill(0);
    ellipse(width/2-20, height/2+110, 10, 10);
    ellipse(width/2+20, height/2+110, 10, 10);
  }
}
