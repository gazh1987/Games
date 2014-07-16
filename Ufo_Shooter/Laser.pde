class Laser extends Base
{ 
  Laser()
  {
    pos = new PVector(shooter.pos.x, shooter.pos.y);
    vel = new PVector (shooter.vel.x, shooter.vel.y);
    speed = 150;
  }
  
  void draw()
  {
    fill(255);
    ellipse(pos.x, pos.y, 5, 5);
  }
  
  void update()
  { 
    pos.x += vel.x * speed * timeDelta;
    pos.y += vel.y * speed * timeDelta;
  }
}
