class Score
{
  String s = "Score: ";
  String gomsg = "Game Over!";
  int score = 0;
  
  void draw()
  {
    textSize(32);
    fill(255);
    text (s, 10, 60);
    text(score, 120, 60);
    textSize(10);
  }
  
  void addScore()
  {
    score += 1;
  }
   
  void gameOver()
  {
    textSize(32);
    fill(255);
    text(gomsg, width/2 - 50, height/2 - 50);
    text (s, width/2 - 50, height/2);
    text(score, width/2 + 50, height/2);
    textSize(10);
  }
  
}
