class Score
{
  int score = 0;
  boolean scoreFlag = false;
  
  void addScore()
  {
    textSize(32);
    fill(0);
    text(score, 80, 30);
    for (int i = 0; i < TSIZE; i ++)
    {
      if (bird.position.x > tower[i].position.x+60 && bird.position.x < tower[i].position.x+62)
      {
        scoreFlag = true;
        if (scoreFlag = true)
        {
          score += 1;
        }
        scoreFlag = false;
      }
    }
  }
  
  void endScore()
  {
    textSize(20);
    fill(0);
    text("Game Over!\nYou scored: " + score, width/2-125, height/2-100);
    text("Press the 'r' key \nto restart the game", width/2-125, height/2+50);
    
    if (key == 'r' | key == 'R')
      {
        setup();
      }
  }
}


