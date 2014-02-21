class Rover
{  
  int x = 250;
  int y = 400;
  float thetaR = 0.2;
  float thetaL = -0.2;
  
  void drawInstructional()
  {
    //Body
    fill(190);
    rect(width/2+100, height/2-80, 40, 60);

    //Laser Turrett
    fill(190);
    rect(width/2+118, height/2-84, 5, 4);
    fill(0);
    
    //Right hand side wheels
    rect(width/2+136, height/2-76, 8, 16);
    rect(width/2+136, height/2-58, 8, 16);
    rect(width/2+136, height/2-40, 8, 16);
    
    //Left hand side wheels
    rect(width/2+96, height/2-76, 8, 16);
    rect(width/2+96, height/2-58, 8, 16);
    rect(width/2+96, height/2-40, 8, 16);
  
    //Camera
    fill(190);
    rect(width/2+112, height/2-68, 16, 16);
    fill(255);
    rect(width/2+116, height/2-72, 8, 4);
    fill(0);
    rect(width/2+114, height/2-45, 12, 12);
    
    //Rear wing
    fill(190);
    rect(width/2+108, height/2-20, 24, 4);
    
    //Red bit
    fill(#e53f39);
    rect(width/2+118, height/2-76, 4, 14);
  }
  
  
  void draw()
  {
    //Body
    fill(190);
    rect(x, 400, 40, 60);

    //Laser Turrett
    fill(190);
    rect(x+17, 396, 5, 4);
    fill(0);
    
    //Right hand side wheels
    if (keyPressed)
    {
      if(key == 'd' | key == 'D' | keyCode == RIGHT)
      {
        pushMatrix();
        translate(x+36, 404);
        rotate(thetaR);
        rect(0, 0, 8, 16);
        popMatrix();
      }
      if(key == 'a' | key == 'A' | keyCode == LEFT)
      {
        pushMatrix();
        translate(x+36, 404);
        rotate(thetaL);
        rect(0, 0, 8, 16);
        popMatrix();
      }
    }
    else
    {
      rect(x+36, 404, 8, 16);
    } 
        
    fill(0);
    if (keyPressed)
    {
      if(key == 'd' | key == 'D' |  keyCode == RIGHT)
      {
        pushMatrix();
        translate(x+36, 422);
        rotate(thetaR);
        rect(0, 0, 8, 16);
        popMatrix();
      }
      if(key == 'a' | key == 'A' | keyCode == LEFT)
      {
        pushMatrix();
        translate(x+36, 422);
        rotate(thetaL);
        rect(0, 0, 8, 16);
        popMatrix();
      }
    }
    else
    {
      rect(x+36, 422, 8, 16);
    }
    
    fill(0);
    rect(x+36, 440, 8, 16);
     
    
    //Left hand side wheels
    if (keyPressed)
    {
      if(key == 'd' | key == 'D' | keyCode == RIGHT)
      {
        pushMatrix();
        translate(x-4, 404);
        rotate(thetaR);
        rect(0, 0, 8, 16);
        popMatrix();
      }
      if(key == 'a' | key == 'A' | keyCode == LEFT)
      {
        pushMatrix();
        translate(x-4, 404);
        rotate(thetaL);
        rect(0, 0, 8, 16);
        popMatrix();
      }
    }
    else
    {
      rect(x-4, 404, 8, 16);
    }
    fill(0);
    
    if (keyPressed)
    {
      if(key == 'd' | key == 'D' | keyCode == RIGHT)
      {
        pushMatrix();
        translate(x-4, 422);
        rotate(thetaR);
        rect(0, 0, 8, 16);
        popMatrix();
      }
      if(key == 'a' | key == 'A' | keyCode == LEFT)
      {
        pushMatrix();
        translate(x-4, 422);
        rotate(thetaL);
        rect(0, 0, 8, 16);
        popMatrix();
      }
    }
    else
    {
      rect(x-4, 422, 8, 16);
    }
    
    fill(0);
    rect(x-4, 440, 8, 16);
    
    //Camera
    fill(190);
    rect(x+12, 414, 16, 16);
    fill(255);
    rect(x+16, 410, 8, 4);
    fill(0);
    rect(x+14, 440, 12, 12);
    
    //Rear wing
    fill(190);
    rect(x+8, 460, 24, 4);
    
    //Laser
    fill(#e53f39);
    rect(x+18, 404, 4, 14);
  } 
  
  void rightTurn()
  {
    x += 10;
  }
  
  void leftTurn()
  {
    x -= 10;
  }

  
  void checkSides()
  {
    if (x <= 0)
    {
      x = 0;
    }
    if (x >= 460)
    {
      x = 460;
    }
  }
}


