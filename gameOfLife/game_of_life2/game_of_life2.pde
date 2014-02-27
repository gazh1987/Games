LifeBoard board;
boolean go = false;

void setup()
{
  frameRate(4);
  size(600, 600);
  background(255);
  board = new LifeBoard();
  
}

void draw()
{ 
  board.draw();
  if (go == true)
  {
    board.update();
  } 
}

void keyPressed()
{
  if (key == 's')
  {
    go = true;
  }
}

void mousePressed()
{
  board.current[mouseY/10][mouseX/10] = true;
}
