class Background
{
  Grain grain[];
  int count;
  float speed = 1;
  
  //Constructor
  Background (int count)
  {
    this.count = count;
    grain = new Grain[count];
    for (int i = 0; i < count; i ++)
    {
      grain[i] = new Grain(random(width), random(height));
    }
  }
  
  void draw()
  {
    strokeWeight(2);
    for(int i = 0; i < count; i ++)
    {
      point(grain[i].x, grain[i].y);
      
      grain[i].y += speed;
      if(grain[i].y > 498)
      {
        grain[i] = new Grain(random(width), 0);
      }
    }
  }
  
  void speedUp()
  {
    speed += 0.06;
  }
}

class Grain
{
  float x, y;
  Grain(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
}
