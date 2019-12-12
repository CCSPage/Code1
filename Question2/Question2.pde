//Finished!! Does it matter that I didn't use lerpColor or HSB? 
void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);


  // add a mapped rotation here
  // map the value of s here
  //float s = 100;
  float s = map(mouseY, 0, height, width,0 );

  
  // map the color here (hint try using either lerpColor or HSB color mode)
  //color c = color(255);
  float c =  map(mouseX, 0, width, 360,0 );
  rotate(radians(c));
  fill(c,0,255);
  rect(0, 0, s, s);
  popMatrix();
}
