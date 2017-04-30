class database{
  int length;
  String[][] users = new String[length][3];
  database(int arraylength,String[][]usersinternal= new String[arraylength][3]){
    arraylength=length;
    for(int i=0;i<length;i++){
    for(int x=0;x<3;x++){
      usersinternal[i][x]=users[i][x];
        }
      }
    }
}
