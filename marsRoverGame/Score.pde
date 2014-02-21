class Score
{
  String s = "Score: ";
  int score = 0;
  int subScore = 0;
  int finalScore;
  
  void draw()
  {    
    textSize(32);
    fill(32);
    text (s, 10, 30);
    text(score, 80, 30);
  }
  
  void addScore()
  {
    score += 100;
  } 
  
  void finalScore()
  {
     finalScore = score; 
  }
  
  void endScore()
  {
    textSize(50);
    fill(32);
    text("Game Over!\nYou scored: " + finalScore, width/2-125, height/2-100);
    text("Press the 'r' key \nto return to opening\nscreen! ", width/2-125, height/2+50);
  }
  
}
