void Ghost(float x, float y) {
  head(x, y);
  body(x, y);
  face(x, y);
  if (key == CODED) {
    if (keyCode == UP) {
      armsUp(x, y);
    } else if(keyCode == RIGHT){ 
        head(x, y);
    lookLeft(x,y);
     armsDown(x, y);
         }else if(keyCode == LEFT){ 
             head(x, y);
    lookRight(x,y);
     armsDown(x, y);
         } else {
      armsDown(x, y);
      face(x,y);
    }
  }
  if(x>width+5){
    RightSide(width/2,height/2);
  }
   if(y>height+8){
    DownSide(width/2,height/2);
  }
   if(x<0-5){
    LeftSide(width/2,height/2);
  }
   if(y<0-10){
    UpSide(width/2,height/2);
  }
}

void head(float x, float y) {
  noStroke();
  fill(94, 83, 122);
  ellipse(x, y, 50, 50);
}
void body(float x, float y) {
  noStroke();
  fill(94, 83, 122);
  rect(x, y+29, 50, 60, 7);
}
void face(float x, float y) {
  stroke(0);
  fill(80, 0, 0, 20);
  ellipse(x-10, y+3, 5, 5);
  ellipse(x+10, y+3, 5, 5);
  fill(255, 60);
  ellipse(x-10, y+3, 3, 3);
  ellipse(x+10, y+3, 3, 3);
  noStroke();
  fill(122, 93, 122);
  ellipse(x-12, y+8, 12, 5);
  ellipse(x+13, y+8, 12, 5);
}
void armsUp(float x, float y) {
  noStroke();
  fill(94, 83, 122);
  ellipse(x, y+12, 90, 10);
  fill(122, 93, 122, 80);
  ellipse(x-12, y+8, 12, 5);
  ellipse(x+13, y+8, 12, 5);
}
void armsDown(float x, float y) {
  noStroke();
  fill(94, 83, 122);
  ellipse(x+28, y+25, 9, 32);
  ellipse(x-28, y+25, 9, 32);
  ellipse(x, y+12, 61, 10);
  fill(122, 93, 122, 80);
  ellipse(x-12, y+8, 12, 5);
  ellipse(x+13, y+8, 12, 5);
}

void lookRight(float x, float y){
    stroke(0);
  fill(80, 0, 0, 20);
  ellipse(x-13, y+3, 5, 5);
  ellipse(x+7, y+3, 5, 5);
  fill(255, 60);
  ellipse(x-13, y+3, 3, 3);
  ellipse(x+7, y+3, 3, 3);
  noStroke();
  fill(122, 93, 122);
  ellipse(x-15, y+8, 12, 5);
  ellipse(x+10, y+8, 12, 5);
}
void lookLeft(float x, float y){
  stroke(0);
  fill(80, 0, 0, 20);
  ellipse(x-7, y+3, 5, 5);
  ellipse(x+13, y+3, 5, 5);
  fill(255, 60);
  ellipse(x-7, y+3, 3, 3);
  ellipse(x+13, y+3, 3, 3);
  noStroke();
  fill(122, 93, 122);
  ellipse(x-9, y+8, 12, 5);
  ellipse(x+16, y+8, 12, 5);
}
