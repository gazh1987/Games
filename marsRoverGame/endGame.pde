class endGame
{
  boolean endgame = false;
  boolean finalScore = true;
  
  void gEnd()
  {
    if (endgame == true)
    {
      if (finalScore == true)
      {
        score.finalScore();
        finalScore = false;
      }
      score.endScore();
      rover.x = 1000;
      
      if (key == 'r' | key == 'R')
      {
        minim.stop();
        setup();
      }
    }
  }
}
 
