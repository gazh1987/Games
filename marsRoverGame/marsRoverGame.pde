import ddf.minim.*;
Minim minim;
AudioPlayer theme;
AudioPlayer collect;
Rover rover;
Background background;
Score score;
mainMenu main;
endGame endgame;
PFont f;
ArrayList<gameObjects> objects;

void setup()
{
  size (500, 500);
  background(#f98746);
  
  minim = new Minim(this);
  theme = minim.loadFile("marsRoverTheme.wav");
  collect = minim.loadFile("collect.wav");

  f = createFont( "lilyUPC",16,true);
 
  main = new mainMenu();
  score = new Score();
  objects = new ArrayList<gameObjects>();
  background = new Background(80);
  rover = new Rover();
  endgame = new endGame();
  theme.play();

  //Adding Ufo and Rock objects to a list of gameObects (Polymorphism!) 
  for (int i = 0; i < 5; i ++)
  {
    objects.add(new Rock());
  }
  for (int i = 0; i < 4; i ++)
  {
    objects.add(new Ufo());
  }
}


void draw()
{
  strokeWeight(1);
  
  if (main.game == false)
  {
    background(#f98746);
    background.draw();
    main.logo();
    main.instructions();
  }
  else if (main.game == true)
  { 
    strokeWeight(1);
    background(#f98746);
    background.draw();
    
    score.draw();
    rover.draw();
    rover.checkSides();
    
  
    //Moving the objects down the screen
    for (gameObjects obj: objects)
    {

      obj.draw();
      obj.update();
    
      //Speed up and add points to score if the Rover collects a rock sample
      if (obj.check == true)
      {
        background.speedUp();
        score.addScore();
      
        //Speed up all objects in the gameObjects list
        for(gameObjects o: objects)
        {
          o.speedUp();
          o.reset();
        }
      }
    }
    
    endgame.gEnd();
  }
}


void keyPressed()
{
  if (key == 'd' | key == 'D' | keyCode == RIGHT)
  {
    rover.rightTurn();
  }
  if (key == 'a' | key == 'A' | keyCode == LEFT)
  {
    rover.leftTurn();
  }
  if (key == 's' | key == 'S') 
  {
    main.game = true;
  }
}

void stop()
{
  theme.close();
  minim.stop();
  
  super.stop();
}




