class Enemy extends Base
{
  PVector dest;
  boolean arrived = false, saveX = false, saveY = false;
  int x, y, dest_x, dest_y;
  float distance;
  int resetX, resetY;
  
  Enemy(int x, int y)
  {
    speed = 50;
    pos = new PVector (x, y);
    vel = new PVector (0, 0);
    resetX = x;
    resetY = y;
  }
  
  void draw()
  {
    ellipse (pos.x, pos.y, 40, 40);
  }
  
  void update()
  {
    if (arrived == false)
    {
      dest = new PVector (random(40, 760), random(40, 560));
      arrived = true;
    }
    dest_x = (int)dest.x;
    dest_y = (int)dest.y;
    
    vel = PVector.sub(dest, pos);
    vel.normalize(); 
    pos.add(PVector.mult(vel, speed * timeDelta));
    
    x = (int)pos.x;
    y = (int)pos.y;
   
    if (x == dest_x || x < dest_x - 5 || x < dest_x + 10)
    { 
      saveX = true;
    } 
    if (y == dest_y || y > dest_y - 5 || y > dest_y + 10)
    {
      saveY = true;
    }
    if (saveX == true && saveY == true)
    {
      arrived = false;
      saveX = false;
      saveY = false;
    }
  }
  
  void hitDet()
  {
    distance = dist(shooter.pos.x, shooter.pos.y, pos.x, pos.y);
    if (distance < 29)
    {
      shooter.alive = false;
    }
  }
  
  void laserDet()
  {
    distance = dist(laser.pos.x, laser.pos.y, pos.x, pos.y);
    if (distance < 50)
    {
      reset();
      speed += 10;
      score.addScore();
    }
  }
  
  void reset()
  {
    pos.x = resetX;
    pos.y = resetY;
  }
}
