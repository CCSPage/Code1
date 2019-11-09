import processing.sound.*;
SoundFile file;
String audioName = "Spooky.mp3";
String Boo = "Boo.wav";
String path;
String booPath;

float score;
float Up;
float Side;
void setup() {
 path = sketchPath(audioName);
 file = new SoundFile(this,path);
 file.play();
  
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


  StartScreen(width/2, height/2);
  if (score>=1) {

    background(72, 61, 100); 
    textSize(15);
    fill(104, 93, 132, 0);
    text("Score: "+score, 50, 50);
    fill(40,30,70,90);
          text("Time to explore!", 25, 35);
      text("If lost at anytime, 'R' will bring you home...", 25, 55);
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
    score++;
  } else {

    Up=0;
  }
  
    if (key == 'r') { //RESTART
    score=0;
    Ghost(width/2+Side, height/2+Up);
   }
}
