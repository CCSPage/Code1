void setup() {
  size(600, 600);
  noStroke();
  rectMode(CENTER);
  background(247, 232, 208);

//}
//void draw() { //realizing since nothing was animating I didn't need a draw function

  for (int i=0; i<=width; i+=15) {
    for (int j=0; j<=height; j+=15) {
      fill(0);
      ellipse(i, j, 2, 2);
    }
  }
  for (int i=0; i<=width; i+=60) {
    for (int j=0; j<=height; j+=60) {
      fill(247, 232, 208);
      rect(i, j, 50, 50); //carving out middle space

      fill(random(190,255), random(50,120), random(30,150));
      ellipse(i, j, 22, 22);
    }
  }
  for (int i=0; i<=width; i+=120) {
    for (int j=0; j<=height; j+=120) {
      fill(random(180,255), random(0,50), random(90,120));
      ellipse(i, j, 45, 45);
    }
  }
}
