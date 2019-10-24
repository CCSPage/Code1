void setup(){
  size(800,800);
    background(210,210,255);
}

void draw(){
for (int i=25; i<800;i=i+50) {
  for (int j=25; j<800;j=j+50){
      strokeWeight(3);
       stroke(255,100,100,255);
   
     fill(255,i,240,100);
  ellipse (i,j,50,50);
  
    fill(0,240,240,100);
    ellipse (i,j,30,30);
   
      fill(50,70,255,100);
  ellipse (i,j,15,15);
  
  strokeWeight(1);
 fill(255,70,1,250);
  rect(i,j,10,10);
  
  strokeWeight(1);
   stroke(250,250,230);
  //line(j,i,i,j);
  //  line(j-10,i-10,i-10,j-10);
     line(i,i,i,j);
    line(i,j,j,j);
  }
}
    
    
  }
  
  
