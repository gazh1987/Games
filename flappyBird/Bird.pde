class Bird
{
  float mass = 90.8;  
  PVector gravity = new PVector(0 , 90.8);
  PVector velocity = new PVector (0, 0);
  PVector position = new PVector (width/2-100, height/2-100);
  PVector force = new PVector (0, mass*-gravity.y);
  boolean buttonReset = true, flap = false;
  float theta = 0.2f;
  
  float timeDelta = 1.0f / 60.0f;
  
  void draw()
  {
    stroke(0);
    //beak
    line(165, position.y, 154, position.y+9);
    line(165, position.y, 154, position.y-9);
    
    //body
    fill(#fdf1a5);
    ellipse(position.x, position.y, 20, 20);
    
    if (flap == false)
    {
      //wing
      line(149, position.y, 135, position.y);
    }
  }
  
  void update()
  {
     velocity.add(PVector.mult(gravity, timeDelta));
     position.add(PVector.mult(velocity, timeDelta)); 
  }
  
  void fly()
  {
    while (buttonReset == true)
    {  
      velocity.add(PVector.mult(force, timeDelta));
      velocity.limit(150);
      flap();
      buttonReset = false;
    }
  }
  
  void flap()
  {
    stroke(0);
    flap = true;
    line(149, position.y, 135, position.y + 10);
  }
  
  void checkSides()
  {
     if (position.y < 2)
     {
       position.y = 15        ;
     } 
     if (position.y > 500)
     {
       position.y = 485;
     } 
  }
}
