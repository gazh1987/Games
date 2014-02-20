class Tower
{
  PVector position = new PVector (width/2, 0);
  PVector velocity = new PVector(-1, 0);
  float h = random(65,435);
  
  
  Tower()
  {
    stroke(0);
    fill(#b2b7be);
    rect (position.x, position.y, 60, h);
    rect (position.x, h + 80, 60, 500 - (h+ 60));
  }
  
  void hitDUpperTower()
  {
    if (bird.position.x > position.x-10 && bird.position.x < position.x+70 && bird.position.y < h+9)
    {
      bird.delete = true;
    }
  }
  
  void hitDLowerTower()
  {
    if (bird.position.x > position.x-10 && bird.position.x < position.x+70 && bird.position.y > h+70)
    {
      bird.delete = true;
    }
  }
  
  void draw()
  {
    stroke(0);
    fill(#b2b7be);
    rect (position.x, position.y, 60, h);
    rect (position.x, h + 80, 60, 500 - h -10);
    println(500 - (h + 80));
  }
  
  void update()
  {
    position.add(velocity);
  }
    
  void checkSides()
  {
     if (position.x < -80)
     {
        position.x = 500;
        h = random(65,435);
     } 
  }
}


