int SIZE = 5;
Bird bird;
Clouds[] cloud = new Clouds[SIZE];

void setup()
{
  size (500, 500);
  background (255);
  bird = new Bird();
  for (int i = 0; i < SIZE; i ++)
  {
    cloud[i] = new Clouds();
  }
}

void draw()
{
  stroke(0);
  background(#c4d6ee);
  for (int i = 0; i < cloud.length; i ++)
  {
    cloud[i].draw();
    cloud[i].update();
    cloud[i].checkSides();
  }
  bird.draw();
  bird.checkSides();
  bird.update();
  if (bird.flap == true)
  {
    bird.flap();
  }
}

void keyPressed()
{
   if (key == ' ')
   {
     bird.fly();
   }   
}
void keyReleased()
{
  if (key == ' ')
  {
    bird.buttonReset = true;
    bird.flap = false;
  } 
}
