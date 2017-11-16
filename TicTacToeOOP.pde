Board board;
Controller Player;

void setup(){
  size( 500, 500);
  board = new Board( 3, 3);
}

void draw(){
  board.drawBoard();
}