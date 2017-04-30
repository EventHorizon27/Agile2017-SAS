import processing.net.*;


class database{
  Server s;
Client c;
  int null=000;
  int length;
    String[] temp= new String[length];
    String insert=";";
    String[] merge=new String[3];
  String[][] users = new String[length][3];
  String[] getUser= new String[3]
  database(int arraylength,String[][]usersinternal){
    arraylength=length;
    usersinternal= new String[arraylength][3];
      for(int i=0;i<length;i++){
            for(int x=0;x<2;x++){
                length=arraylength;
                  users[i][x]= usersinternal[i][x];
                      }
                    }
                  }
                  void sortdata(){
                    for(int q=0;q<length;q++){
                      temp[q]=users[q][0]+insert+users[q][1]+insert+users[q][2];
                      sort(temp);
                    }
                    for(int i=0;i<temp.length;i++){
                        users[i]=split(temp[i],";");

                    }

                    }
                    void insert(String[] user){
                      user = new String[3];
                      for(int v=0; v<2;v++){
                      users[length-1][v]=user[v];
                    }
                    database.sortdata();
                    }
                    void deleteuser(String toDelete){
                      for(int i;i<length;i++){
                        if (users[i][0]=toDelete;){
                            for(int v=0; v<2;v++){
                              users[i][v]=str(null);
                            }
                        }

                      }
                    }
                    void networkStart(int port,String IP,String HostName){
                    c = new Client(this, IP, port);  // Connect to server on port
                    c.write("GET / HTTP/1.0\n");  // Use the HTTP "GET" command to ask for a webpage
                    c.write(HostName); // Be polite and say who we are
                      }
                      void networkRead(){
                        if(c.readString=="insertUser"){//send if you want to have user inserted
                        getUser[1]=c.readString();//username
                        delay(5);
                        getUser[2]=c.readString();//password
                        delay(5);
                        getUser[3].readString();//interests
                        database.insert(getUser);//insert
                        c.write("done");
                      }
                      if(c.readString=="login"){
                        int user;
                      for(int i=0;i<length;i++){
                        if(c.readString()==users[i[1]]){
                          user=i;
                            c.write("user found");
                            delay(5);
                            if(c.readString()==users[user][2]){
                              c.write("correct password");
                            }
                            else(){
                              c.write("wrong password")
                            }
                        }
                      }
                      }
                    }
                  }
