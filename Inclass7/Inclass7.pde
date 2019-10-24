int score;

int num= 100;
float [] xpos= new float [num];
float [] ypos= new float [num];
float [] xSpeed= new float [num];
float [] ySpeed= new float [num];
float [] radius= new float [num];
float [] hues= new float [num];
int whichOne =0;

void setup() {
  size (600, 600);
  colorMode(HSB);
  noStroke();

  for (int i=0; i<num; i++) {
    xpos [i] = width/2;
    ypos [i]= height/2;
    xSpeed [i] = random (-5, 5);
    ySpeed [i]= random (-5, 5); 
    radius[i] = 0; //random (5, 30);
    hues [i] = map (i, 0, num, 0, 255);
  }
}
void draw () {
  background (255);
  textSize(20);
   text("Points = "+score,50,50);
  
  for (int i=0; i<num; i++) {

    if (xpos [i]> width- radius[i] || xpos [i] < radius[i]) {
      xSpeed [i] *= -1;
    }
    if (ypos [i]> width- radius[i] || ypos [i] < radius[i]) {
      ySpeed [i] *= -1;
    }
    xpos [i] += xSpeed [i];
    ypos [i] += ySpeed [i];
    fill (hues [i], 100, 250);
    ellipse (xpos [i], ypos [i], radius[i], radius [i]);
  }
}

void keyPressed() {
  //int r = int(random(num));
  radius[whichOne] = random(50,80);
  score++;
  if (whichOne > 0){
    
    radius[whichOne -1] = 0;
  }
  whichOne++;
}
