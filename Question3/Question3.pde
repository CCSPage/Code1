//didn't get to this one so I did a quick sloppy way 
//of increasing amplitude and then resetting once it reaches width

int size = 50; 
float xPos = 0;
float yPos = 0;
float theta; 
float ampl; 

void setup() {
  size(600, 600);
  ampl = 1;
}
void draw() {
  background(0); 

  theta += 0.5; 

  if(xPos>=width){
    xPos=0;
    ampl = 0;
  }

  xPos += 1; 

  //use the map function for ampl 
ampl+=.1;

  //fix yPos 
  yPos = sin(theta)*ampl; 

  fill(255); 
  ellipse(xPos, yPos, size, size);
}
