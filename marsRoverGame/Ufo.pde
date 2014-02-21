class Ufo extends gameObjects
{
  
  float x;
  float y;
  float speed;
  float rate;
  
  Ufo()
  {
    x = random(width);
    y = random(height)-500;
    speed = 1.8;
    rate = .5;
  }
  
  void draw()
  {
    stroke(0);
    fill(0);
    ellipse(x + 5, y - 5, 60, 60);
    fill(150);
    ellipse(x, y, 60, 60);
    fill(230);
    ellipse(x, y, 30, 30);
  }
  
  void drawInstructional()
  {
    stroke(0);
    fill(150);
    ellipse(width/2+50, height/2+112, 60, 60);
    fill(230);
    ellipse(width/2+50, height/2+112, 30, 30);
  }
  
  void update()
  {
    y += speed;
    
    if (y > height)
    {
      x = random(width);
      y = random(height)-500;
    }
    
    if(dist(x, y, rover.x + 20, rover.y + 30) <= 56)
    {
      endgame.endgame = true;
    }
  }
  
  void speedUp()
  {
    speed += 0.06;
  }
}
