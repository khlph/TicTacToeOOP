class Board {
  int rows;
  int columns;
  Board( int no_row, int no_column) {
    this.rows = no_row;
    this.columns = no_column;
  }

  void drawBoard(){
    pushMatrix();
    for( int i = 0; i < rows; i++) {
      translate(width/rows, 0);
      line( 0, 0, 0, height);
    }
    popMatrix();
    pushMatrix();
    for( int i = 0; i < columns; i++) {
      translate( 0, height/columns);
      line( 0, 0, width, 0);
    }
    popMatrix();
  }
}