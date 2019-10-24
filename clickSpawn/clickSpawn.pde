ArrayList<Dot> dots = new ArrayList<Dot>();

void setup() {
  size(600,600);
}
void draw() {
  background(255);
  
  for (Dot d: dots){
    d.display();
  }

}
void mousePressed(){
  dots.add(new Dot(mouseX,mouseY));
}
