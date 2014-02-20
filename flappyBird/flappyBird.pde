int SIZE = 8;
int TSIZE = 2;
Bird bird;
Clouds[] cloud = new Clouds[SIZE];
Tower[] tower = new Tower[TSIZE];
Score score;

void setup()
{
  size (500, 500);
  background (255);
  bird = new Bird();
  score = new Score();
  for (int i = 0; i < SIZE; i ++)
  {
    cloud[i] = new Clouds();
  }
  for (int i = 0; i < TSIZE; i ++)
  {
    tower[i] = new Tower();
  }
  tower[0].position.x = width;
  tower[1].position.x = width+290;  
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
  
  for (int i = 0; i < TSIZE; i ++)
  {
    tower[i].draw();
    tower[i].update();
    tower[i].checkSides();
    tower[i].hitDUpperTower();
    tower[i].hitDLowerTower();
  }
  
  if (bird.delete == false)
  {
    bird.draw();
    bird.checkSides();
    bird.update();
    if (bird.flap == true)
    {
      bird.flap();
    }
    score.addScore();
  }
  
  if (bird.delete == true)
  {
    score.endScore();
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
