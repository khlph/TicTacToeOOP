Board board;
Controller playerOne;
Controller playerTwo;
Display display;
int row = 3;
int column = 3;
int turn = 1;

void setup(){
  size( 500, 500);
  board = new Board( row, column);
  playerOne = new Controller( row, column, "Kong");
  playerTwo = new Controller( row, column, "Bot");
}

void draw(){
  board.drawBoard();
  if(playerOne.getWinner() == 1){
    //do something
  }
  if(playerTwo.getWinner() == 1){
    //do something
  }
}

void mousePressed(){
  
  for( int i = 1; i <= row; i++){ 
    if (((mouseX >= ((i-1)*width)/row) && (mouseX <= (i*width)/row))){
      for( int j = 1; j <= column; j++){
        if (((mouseY >= ((j-1)*height)/column) && (mouseY <= (j*height)/column))){
          if(turn().board[i][j] != 0) return;
          turn().setValue( i, j);
          changeturn();
          
        }
      }
    }
  }
 
}

Controller turn(){
  //
  if(turn == 1)
    return playerOne;
  if(turn == 2)
    return playerTwo;
}

int changeturn(){
  if(turn == 1)
    return turn = 2;
  if(turn == 2)
    return turn = 1;
}