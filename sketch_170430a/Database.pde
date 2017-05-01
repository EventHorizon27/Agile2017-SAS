import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
boolean trigger=false;

class Database {

Client c;
String ip;
int port;
String hostName;
  boolean isExisting;
  int nullvar=000;
  int length;
  String[] temp= new String[length];
  String insert=";";
  String[] merge=new String[3];
  String[][] users = new String[length][3];
  String[] getUser= new String[3];



  Database(int arraylength, String[][]usersinternal,String ipToUse,int portToUse,String host) {
    c = new Client(this, ip, port);  // Connect to server on port

ip=ipToUse;
port=portToUse;
hostName=host;
    arraylength=length;
    usersinternal= new String[arraylength][3];
    for (int i=0; i<length; i++) {
      for (int x=0; x<2; x++) {
        length=arraylength;
        users[i][x]= usersinternal[i][x];
      }
    }
  } // Database (constructor)


  void sortdata() {
    for (int q=0; q<length; q++) {
      temp[q]=users[q][0]+insert+users[q][1]+insert+users[q][2];
      sort(temp);
    }
    for (int i=0; i<temp.length; i++) {
      users[i]=split(temp[i], ";");
    }
  } // sortdata


  void insert(String[] user) {
    user = new String[3];
    for (int v=0; v<2; v++) {
      users[length-1][v]=user[v];
    }
    for (int q=0; q<length; q++) {
      temp[q]=users[q][0]+insert+users[q][1]+insert+users[q][2];
      sort(temp);
    }
    for (int i=0; i<temp.length; i++) {
      users[i]=split(temp[i], ";");
    }
  }  // insert


  void deleteuser(String toDelete) {
    for (int i=0; i<length; i++) {
      if (users[i][0]==toDelete) {
        for (int v=0; v<2; v++) {
          users[i][v]=str(nullvar);
        }
      }
    }
  } // deleteuser


  void networkStart(String ip,int port , String hostName) {

    c.write(HostName); // Be polite and say who we are
  }   // networkStart


  void networkRead() {
    if (c.readString=="insertUser") {//send if you want to have user inserted
      getUser[1]=c.readString();//username
      for (int i=0; i<length; i++) {
        if (c.readString()==users[i[1]]) {
          isExisting=true;
        }
        else{
          isExisting=false;
        }
      delay(5);
      if(isExisting==false){
      getUser[2]=c.readString();//password
      delay(5);
      getUser[3].readString();//interests
      database.insert(getUser);//insert
      c.write("done");
    }}
    if (c.readString=="login") {
      int user;


          user=i;
          c.write("user found");
          delay(5);
        }
      }
      if (c.readString()==users[user][2]) {
        c.write("correct password");
      } else {
        c.write("wrong password");
      }

  } // networkRead
void debug(int checkTimes){
  CarnivoreP5 c2;
  c2 = new CarnivoreP5(this);


if(c.readString=="ping"){
c.write("Got ping"); //c;
}
if(trigger==true){
  println("(" + p.strTransportProtocol + " packet) " + p.senderSocket() + " > " + p.receiverSocket());
}
}
} // class Database

void packetEvent(CarnivorePacket p){
trigger=true;
}
