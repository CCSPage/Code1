ArrayList<Particle> b = new ArrayList<Particle>();

void setup() {
  size(400, 1000);

}

void draw() {
  background(0);

 
  b.add(new Particle(width/2, 400));

  for (int i = b.size() - 1; i >= 0; i--) {
    Particle temp = b.get(i);
    temp.update();
    temp.display();
    if (temp.life < 0) {
      b.remove(i);
    }
  }
  rectMode(CENTER);
  fill(255,250,205,99);
   rect(width/2,580,60,210,8);
  rect(width/2,580,50,200,8);
   rect(width/2,580,40,190,8);
     rect(width/2,580,30,180,8);
  
  
}

class Particle {
  float x;
  float y;
  float dx;
  float dy;
  float life;
  float r;

  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-1, 1);
    
    dy = random(-5, 0);
    life = 160 ;
    r = 40;
  }

  void update() {
    life-=2;

    x += dx;
    y += dy;
  }

  void display() {
    noStroke();
    fill(random(180, 255), random(50, 150), 0, random(20,60));
    float r = map(life, 100, 0, 40, 0);
    ellipse(x, y, r * (random(1, 1.8)), r * 2);
  }
}
