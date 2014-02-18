class Clouds
{
  PVector position = new PVector(random(width+200), random(height));
  PVector velocity = new PVector(-0.5, 0);
  
  Clouds()
  {
    stroke(#c4d6ee); 
    fill(255);
    rect (position.x, position.y, 100, 50);
  }
  
  void checkSides()
  {
     if (position.x < -100)
     {
       position.x = 500;
     } 
  }
  
  void draw()
  {
    stroke(#c4d6ee); 
    fill(255);
    rect (position.x, position.y, 100, 50);
  }
  
  void update()
  {
    position.add(velocity);

  }
}
