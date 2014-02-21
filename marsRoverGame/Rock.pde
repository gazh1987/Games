class Rock extends gameObjects
{ 
  void draw()
  {    
    fill(#d90a0a);
    ellipse(x, y, 20, 20);
  }
  
  void drawInstructional()
  {
    fill(#d90a0a);
    ellipse(width/2+100, height/2+30, 20, 20);
  }
  
  void update()
  {
    y += speed;
    
    if (y > height)
    {
      x = random(width);
      y = height-500;
    }
    
    if(dist(x, y, rover.x + 20, rover.y + 30) <= 36)
    {
      collect.play();
      collect.rewind();
      x = random(width);
      y = height-500;
      check = true;
    }
  }
}
