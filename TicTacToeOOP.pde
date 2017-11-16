Board board;
Controller playerOne;
Controller playerTwo;
Display display = new Display();
int row = 3;
int column = 3;
int turn = 1;
boolean stop = false;
int countturn = 0; 

void setup(){
  size( 500, 500);
  board = new Board( row, column);
  playerOne = new Controller( row, column, "Kong");
  playerTwo = new Controller( row, column, "Bot");
}

void draw(){
  board.drawBoard();
  if(playerOne.getWinner() == 1 ){
    display.showWinner(turn());
  }
  if(playerTwo.getWinner() == 1 ){
    display.showWinner(turn()); 
  }
  if(countturn == row*column && turn().getWinner() == 0){
    display.itsdraw();}
}

void mousePressed(){
  
  for( int i = 1; i <= row; i++){ 
    if (((mouseX >= ((i-1)*width)/row) && (mouseX <= (i*width)/row))){
      for( int j = 1; j <= column; j++){
        if (((mouseY >= ((j-1)*height)/column) && (mouseY <= (j*height)/column))){
          if(turn().board[i-1][j-1] != 0) return;
          
          turn().setValue( i-1, j-1);
          display.drawOX( (i*2-1)*width/(row*2), (j*2-1)*height/(column*2));
          
          if(turn().getWinner() != 0) return;
          changeturn();
          countturn++;
        }
      }
    }
  }
 
}

Controller turn(){
  if(turn == 1)
    return playerOne;
  else
    return playerTwo;
}

int changeturn(){
  if(turn == 1)
    return turn = 2;
  else
    return turn = 1;
}