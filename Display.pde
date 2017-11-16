class Display{
  
  int turn = 1;
  Display(){
  }
  
  void drawOX(  float x, float y){
    textSize(100);
    textAlign(CENTER);
    if(turn == 1){
      fill(#f44141);
      text( "O", x, y+40);
      turn--;
    }
    else if(turn == 0){
      fill(#4286f4);
      text( "X", x, y+40);
      turn++;
    }
  }
  void showWinner(Controller player){
    textAlign(CENTER);
    background(127);
    fill(255);
    textSize(30);
    text(player.name, width / 2 , height/3);
  }
  
  void itsdraw(){
    textAlign(CENTER);
    background(127);
    fill(255);
    textSize(30);
    text("It's Draw", width / 2 , height/3);
  }
    
}