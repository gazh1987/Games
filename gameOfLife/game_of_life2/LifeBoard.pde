class LifeBoard
{
  boolean[][] current;
  boolean[][] next;
  int cellWidth = 10;
  int cellHeight = 10;
  int boardWidth;
  int boardHeight;
  int r;
  
  LifeBoard()
  {
    r = 50;
    boardWidth = width / cellWidth;
    boardHeight = height / cellHeight;
    current = new boolean[boardWidth][boardHeight];
    next = new boolean[boardWidth][boardHeight];
  }
  
  
  void randomise()
  {
    int prob = (int)random (100);
    for (int i = 0; i < boardHeight; i++)
    {
      for (int j = 0; j < boardWidth; j++)
      {
        if (r > prob)
        {
          current[j][i] = true;
        }
        else
        {
          current[j][i] = false;
        }
      }
    }
  }

  boolean isOn (int x, int y)
  {
    if (current[y][x] == true)  
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  void clearBoard(boolean board[][])
  {
    for (int i = 0; i < boardHeight; i ++)
    {
      for (int j = 0; j < boardWidth; j ++)
      {
        board[j][i] = false;
      }      
    }
  }
  
  int countLiveCellsSurrounding(int x, int y)
  {
    boolean alive = false;
    int count = 0;
    
    if (x > 1 && y < boardHeight - 1 && x < boardWidth -1 && y > 1)
    {
      for (int i = x - 1; i <= x + 1; i ++)
      {
        for (int j = y - 1; j <= y + 1; j ++)
        {
          if (!(i == x && j == y))
          {
            alive = isOn(i, j);
            if (alive == true)
            {
              count += 1;
            }//end if
          }//end if
        }//end for   
      }//end for
    }//end if
    return count;
  }
  
  void update()
  {
    int count = 0;
    clearBoard(next);
    for (int i = 0; i < boardHeight; i ++)
    {
      for (int j = 0; j < boardWidth; j ++)
      {
        count = countLiveCellsSurrounding(i, j);
        if (current[j][i] == true && count < 2)
        {
          next[j][i] = false; 
          println(next[j][i]);  
        }
        else if (current[j][i] == true && count > 3)
        {
          next[j][i] = false;
        }
        else if (current[j][i] == true && count > 1 || current[j][i] == true && count < 4)
        {
          next[j][i] = true;
        }
        else if (current[j][i] == false && count == 3)
        {
          next[j][i] = true;
        }
        
      }
     }
     
     for (int i = 0; i < boardHeight; i ++)
     {
       for (int j = 0; j < boardWidth; j++)
       {
         current[j][i] = next[j][i];
       }
     }
    
   }
 
  void draw()
  {
    boolean alive;
    for (int i = 0; i < boardHeight; i ++)
    {
      for (int j = 0; j < boardWidth; j ++)
      {
        alive = isOn(i, j);
        if (alive == true)
        {
          fill(0);
          rect(i * cellHeight, j * cellWidth, cellHeight, cellWidth);
        }
        if (alive == false)
        {
          stroke(255);
          fill(255);
          rect(i * cellHeight, j * cellWidth, cellHeight, cellWidth);
        }
      }
    }
  } 
}



