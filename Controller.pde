class Controller extends Board{
  
  int countturn;
  int rows;
  int columns;
  int board[][];
  String name;
  Controller(int rows,int columns,String name){
    super(rows,columns);
    countturn = 0;
    this.name = name;
    this.board = new int [rows][columns];
  }
  
  int getWinner(){
    
    int diag1 = 0, diag2 = 0;
    
    for( int i = 1 ; i < rows ; i++){
      
      int rowSum = 0;
      int colSum = 0;
      diag1 += this.board[i][i];
      diag2 += this.board[i][2-i];
      
      for( int j = 0 ; j < columns ; j++){
        
        rowSum += this.board[i][j];
        colSum += this.board[j][i];
        
      }
      if ( rowSum == rows || colSum == columns || diag1 == rows || diag2 == columns )
        return 1;
      }  

    return 0; 
  }
  void setValue(int i, int j){
    this.board[i][j] = 1;
  }
}
    