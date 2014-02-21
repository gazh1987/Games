class mainMenu
{
  Rover r = new Rover();
  Rock rock = new Rock();
  Ufo u = new Ufo();
  boolean game = false;
  int x = width/2;
 
  void logo()
  {
    f = createFont( "LilyUPC",90,true);
    textFont(f);
    fill(40);
    text("Mars Rover", width/2-140, height/2-170);
  }
  
  void instructions()
  {
    f = createFont( "LilyUPC",35,true);
    textFont(f);
    fill(230);
    text("-You are the Mars Rover ->", width/2-220, height/2-40);
    r.drawInstructional();
    fill(230);
    text("-Collect the rock samples ->", width/2-220, height/2+40);
    rock.drawInstructional();
    fill(230);
    text("-Avoid the Ufos's ->", width/2-220, height/2+120);
    u.drawInstructional();
    fill(230);
    text("-Press the 's' key to start the game!!", width/2-220, height/2+200);
    
    fill(255);
    text("Move the Rover by pressing the A key to move left and the D key to go right. Alternatively, press the LEFT and RIGHT keys.", x, height/2-120); 
    x = x-1;
    
    if (x <= -1250)
    {
      x = 500;
    }
  
  }
  
}


