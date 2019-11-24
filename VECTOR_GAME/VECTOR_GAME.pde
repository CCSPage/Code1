ArrayList<Mover> movers = new ArrayList<Mover>();
int score;

void setup() {
  size(800, 600);
  score = 0;
}

void draw() {
  background(200, 180, 190);
  textSize(20);
  text("Q: How many balls can you spawn on the screen before they collide?", 50, 50);
  text("A: "+score, 50, 100);
  for (int i = 0; i < movers.size(); i++) {
    Mover m = movers.get(i);
    for (int j = 0; j < movers.size(); j++) {
      if (i != j) {
        Mover otherM = movers.get(j);
        PVector force = new PVector(otherM.pos.x, otherM.pos.y);
        force.sub(m.pos);

        float distance = force.mag();
        distance = constrain(distance, 5, 25);
        force.normalize();
        float strength = (0.4 * m.mass * otherM.mass) / (distance * distance);
        force.mult(strength);
        m.applyForce(force);
        
    if (dist(m.pos.x,m.pos.y,otherM.pos.x, otherM.pos.y) <= 1+m.size){
//println(score);
score=100;
  }
  if(score>=100){     //really lame way of doing what I'm trying to do I know >_<
    rectMode(CENTER);
rect(width/2,height/2,width,height);
fill(255);
  text("Nice try though...", 50, 100);
  fill(0);
  }
  
      }
    }
    m.update();
    m.display();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY));
  score++;
}


class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  float size;

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = random(3, 8);
    size = 5*mass;
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void display() {
    fill(180, 90, 90);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass * 2);
    acc.add(f);
  }
}
