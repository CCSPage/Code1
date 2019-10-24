//void setup() {
//  size(600, 600);
//  noStroke();
//}

//void draw() {
//  background(255);
//  for (int y = 0; y < height; y +=50) {
//    for ( int x = 0; x < width; x += 50) {
      
//      pushMatrix();
//      translate(x, y);
//      float r = map(x, 0, width, 0, 255);
//      float g = map(y, 0, height, 0, 255);
//      //float d = dist(mouseX,mouseY,width/2,0);
//      fill(r + g, g, 250, 90);
//      rotate(radians(frameCount - x + y));
//      ellipse(width/2, 0, 30, 30);
//      ellipse(0, 0, 5, 5);
//      rect(width/2, 0, 400, 400);
    
//      popMatrix();
//    }
//  }
//}

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255);
  for (int y = 0; y < height; y +=50) {
    for ( int x = 0; x < width; x += 50) {
      
      pushMatrix();
      translate(x, y);
      float r = map(x, 0, width, 0, 255);
      float g = map(y, 0, height, 0, 255);
      //float d = dist(mouseX,mouseY,width/2,0);
      fill(r + g, g, 250, 90);
      rotate(radians(frameCount - x + y));
      ellipse(width/2, 0, 30, 30);
      ellipse(0, 0, 4, 4);
      rect(width/2, 0, x*2, y*2);
    
      popMatrix();
    }
  }
}
