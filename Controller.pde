class Controller extends Board{
  int countturn;
  Controller(int rows,int columns){
    countturn = 0;
  }
  
  int getWinner(){
    
    int diag1 = 0, diag2 = 0;
    
    for( int i = 1 ; i < rows ; i++){
      
      int rowSum = 0;
      int colSum = 0;
      diag1 += board[i][i];
      diag2 += board[i][2-i];
      
      for( int j = 0 ; j < columns ; j++){
        
        rowSum += board[i][j];
        colSum += board[j][i];
        
      }
      if ( rowSum == rows || colSum == columns || diag1 == rows || diag2 == columns )
        return 1;
      }  

    return 0; 
  }
}
    