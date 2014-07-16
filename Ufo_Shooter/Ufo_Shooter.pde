ArrayList<Base> objects;
Boolean laser_gate = false;
Shooter shooter;
Laser laser;
Laser laser2;
Enemy enemy;
Enemy enemy1;
Enemy enemy2;
Enemy enemy3;
Score score;

void setup()
{
  size (800, 600);
  background(0);
  
  //Initialising Game Content
  objects = new ArrayList<Base>();
  shooter = new Shooter();
  enemy = new Enemy(-200, -200);
  enemy1 = new Enemy(1000, -200);
  enemy2 = new Enemy(1000, 820);
  enemy3 = new Enemy(-200, 1020);
  laser = new Laser();
  score = new Score();
      
  //Adding content to ArrayList
  objects.add(shooter);
  objects.add(enemy);
  objects.add(enemy1);
  objects.add(enemy2);
  objects.add(enemy3);
}

void draw()
{
  background(0);
  
  if (shooter.alive == true)
  {
    //Iterating the objects ArrayList
    for(Base o : objects)
    {
      o.draw();
      o.update();
      o.laser();
      o.checkSides();
      o.hitDet();
      o.laserDet();
    }  
    score.draw();
  }
  else
  {
    objects.remove(shooter);
    objects.remove(enemy1);
    objects.remove(enemy2);
    objects.remove(enemy3);
    objects.remove(enemy);
    
    score.gameOver();
    
  }
}

void keyPressed()
{
  if (shooter.alive == false && key == 'r')
  {
    setup();
  }
  if (keyCode == LEFT)
  {
    shooter.left = true;
  } 
  if (keyCode == RIGHT)
  {
    shooter.right = true;
  }
  if (laser_gate == false)
  {
    if (key == ' ')
    {
      laser_gate = true;
      
      laser = new Laser();
      objects.add(laser);
    }
  } 
}
 
void keyReleased()
{
  if (keyCode == LEFT)
  {
    shooter.left = false;
  } 
  if (keyCode == RIGHT)
  {
    shooter.right = false;
  } 
  if (key == ' ')
  {
    laser.speed = 1500;        
    laser_gate = false;
  }
}
