class Dot{
  float x;
  float y;
  
  Dot(float _x, float _y){
    x=_x;
    y=_y;
  }
  void display(){
    fill(0);
    ellipse(x,y,10,10);
  }
}
