float startingSize;
float oscillateSize;
float oscillateBackground;
float angle;
float rate;
float amplitude;


void setup() {
  size(800, 800);
  noStroke();

  angle = 0;
  rate = 0.03;
  amplitude = 100;
  startingSize = 150;
}


void draw() {
  translate(width/2, height/2);
background(oscillateBackground,69,0);
  oscillateBackground = map(sin(angle), -1, 1, 0, 255);
  angle += rate;
  oscillateSize = startingSize + sin(angle) * amplitude;

  for (int i = 1; i < width; i +=50) {
    for (int j = 1; j < height; j += 50) {
      float r = map(i, 0, width, 0, 255);
      rotate(radians(frameCount)*oscillateSize);
      fill(random(0, 255), 0, 0, 80);
      rect(i, j, 300*i, 300*r);
      fill(random(0, 255), 150, 100, 50);
      rect(i, j, 300*j, 200*-r);
    }
  }

}
