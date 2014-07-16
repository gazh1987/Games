class Shooter extends Base
{
  Boolean left = false, right = false;
  Boolean alive = true;
  
  Shooter()
  {
    rectMode(CENTER);
    pos = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    theta = 0.0f;
  }
  
  void draw()
  {
    pushMatrix();
    translate (pos.x, pos.y);
    rotate(-theta);
    rect(0, 0, 20, 10);
    popMatrix();
  }
  
  void update()
  {
    if (left == true)
    {
      theta += 0.08;
    }
    if (right == true)
    {
      theta -= 0.08;
    }
    vel.x = cos(-theta);
    vel.y = sin(-theta);
    
    //Rotate Shooter
    pos.x += vel.x * timeDelta * speed;
    pos.y += vel.y * timeDelta * speed;
    
    vel.limit(1.5);
  }
  
  void checkSides()
  {
    if (pos.x > width)
    {
      pos.x = 0;
    }
    if (pos.x < 0)
    {
      pos.x = width;
    }
    if (pos.y < 0)
    {
      pos.y = height;
    }
    if (pos.y > height)
    {
      pos.y = 0;
    }
  }
}
