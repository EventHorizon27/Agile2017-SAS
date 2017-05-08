
import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
boolean trigger=false;

boolean update;


class Database {
  boolean paged;
  String[] usersGroupSort;
StringList t;
StringList usernames;
StringList passwords;
StringList interests;
String[] query=new String[3];
String nullify;
String[][] splitBlock;
int[] block = new int[2];
String[] none= new String[2];
String[] lengthStr = new String[2];
String[] encryptedpasswords
Client c2;
String permanenentIP;
int permanentPort;
String permanenentServerIP;
int permanentServerPort;
String permanentHost;
String username;
Client c;
Client mirror;
boolean isExisting;
int nullvar=000;
int length;
String[] tempinterests= new String[length];
String[] temp= new String[length];
String[] tempPasswords= new String[length];
String insert=";";
String[] merge=new String[3];
String[][] users = new String[length][3];
String[] getUser= new String[3];
boolean userFound;
String[] encryptedpasswords= new String[length];
int user=0;
PApplet _myApplet;
int pageSize;
Database(int arraylength,int _pageSize, PApplet myApplet) {
  pageSize=_pageSize;
  lengthStr[1]=str(arraylength);
  saveStrings("length.txt",lengthStr);
    length=arraylength;
    _myApplet=myApplet;

  } // Database (constructor)


void startup(){

  temp = loadStrings(/Users/colechristini/Desktop/DatabaseFiles/usernames.txt);
  tempPasswords=loadStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt);
  tempinterests=loadStrings(/Users/colechristini/Desktop/DatabaseFiles/interests.txt);

    usernames.append(temp);
    passwords.append(tempPasswords);
    interests.append(tempinterests);

      none[1]=int(nullvar);
      none[2]=int(nullvar);
      saveStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt,none);

    }
  }

void blockSelect(int start,int end){

  block[0]=start;
  block[1]=end;
}
void blockDelete(){
  for(int i=start;i<end;i++){
    usernames.remove(z);
    passwords.remove(z);
    interests.remove(z);

  }

}

void splitByBlock(int length){
  splitBlocks=new String[length][3];
  for(int i=start;i<end;i++){
    splitBlocks[i][1]=usernames.get(i);
    splitBlocks[i][2]=passwords.get(i);
    splitBlocks[i][3]=interests.get(i);
    usernames.set(i,str(nullvar))
    passwords.set(i,str(nullvar))
    interests.set(i,str(nullvar))

  }





}

}
  void sortdata() {
    String[] x = new String[3];
    for (int q=0; q<length; q++) {
      temp[q]=usernames.get(q)+insert+passwords.get(q)+insert+interests.get(q);
      sort(temp);
    }
    for (int i=0; i<temp.length; i++) {
      x[i]=split(temp[i], ";");
      usernames.set(i,x[1]);
      passwords.set(i,x[2]);
      interests.set(i,x[3]);
    }
  } // sortdata


  void insert(String[] user) {
    user = new String[3];


      temp[length-1]=users[q][0]+insert+users[q][1]+insert+users[q][2];

      sort(temp);

      for (int i=0; i<temp.length; i++) {
        x[i]=split(temp[i], ";");
        usernames.set(i,x[1]);
        passwords.set(i,x[2]);
        interests.set(i,x[3]);
      }
  }  // insert


  void deleteuser(String toDelete) {
    for (int i=0; i<length; i++) {
      if (usernames.get(i)==toDelete) {
          usernames.remove(i);
          passwords.remove(i);
          interests.remove(i);
        }
      }
    }
  } // deleteuser
void convertToPages(){
  usersGroupSort=new String[round(usernames.length()/pageSize)];
  String[] pageTemp = new String[pageSize];
for(int z=0;z<round(usernames.length()/pageSize);z++){
for(int i=0;i<pageSize;i++){

  pageTemp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
  if(i==pageSize){String f = new String[3];
    f=split(pageTemp[0],";");
    usersGroupSort[z]=f[0];
    saveStrings("page"+z+".txt",pageTemp)


  }



}
if(z==round(usernames.length()){

  paged=true;
}
}
}

  void networkStart(String ip, int port, String hostname,String serverIP,int serverPort) {
    c = new Client(_myApplet, ip, port);  // Connect to server on port
    c2 = new Client(_myApplet, serverIP, serverPort);
    permanenentIP=ip;
    permanentPort=port;
    permanentHost=hostname;
    permanenentServerIP=serverIP;
    permanentServerPort=serverPort;
    c.write(hostname); // Be polite and say who we are
    c.write(c.ip());
  }   // networkStart

void updateSlave(String mirrorIP,String port){
  mirror=new Client(_myApplet,mirrorIP,port);
for(int i=0;i<3*length;i++){
  temp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
  mirror.write(temp[i]);

}

}
void updateFromMaster(){
  for(int i=0;i<3*length;i++){
    temp[i]=mirror.readString();
    x[i]=split(temp[i], ";");
    usernames.set(i,x[0]);
    passwords.set(i,x[1]);
    interests.set(i,x[2]);
}

}
void write(String ip,String message,int port){
  Client writer;
  writer=new Client(_myApplet,ip,port);
  writer.write(message);

}
void setField(int userNumber,int field,String toSet){
  if(field==1){
      username.set(userNumber,toSet);

  }
  if(field==2){
    passwords.set(userNumber,toSet);

  }
  if(field==3){
    interests.set(userNumber,toSet);

  }
  users[userNumber][field]=toSet;
}
  void network() {
    c2.write(2);
if(c.read()==3){
  update=true;

}
    if (c.read()==2) {
      getUser = new String[3];//send if you want to have user inserted
      getUser[1]=c.readString();//username
      for (int i=0; i<users.length; i++) {
        if (c.readString()==users[i][1]) {
          isExisting=true;
        } else {
          isExisting=false;
        }
        delay(5);
        if (isExisting==false) {
          getUser[2]=c.readString();//password
          delay(5);
          getUser[3]=c.readString();//interests


            usernames.append(getUser[0]);
            passwords.append(getUser[1]);
            interests.append(getUser[2]);
          }
          String[] x = new String[3];
          for (int q=0; q<length; q++) {
            temp[q]=usernames.get(q)+insert+passwords.get(q)+insert+interests.get(q);
            sort(temp);
          }
          for (int i=0; i<temp.length; i++) {
            x[i]=split(temp[i], ";");
            usernames.set(i,x[1]);
            passwords.set(i,x[2]);
            interests.set(i,x[3]);
          }
          c.write(2);
        }
      }
      if (c.read()==1) {
        username=c.readString();

        for (int l=0; l<users.length; l++) {
          if (username==users[l][1]) {
            user=l;
            c.write(1);
            delay(5);
            userFound=true;
          }
          else{
            c.write(0);
          }
        }
      }
      if (userFound==true) {
        if (c.readString()==users[user][1]) {
          c.write(1);
        } else {
          c.write(0);
        }
      }
    }
  }
// networkRead
  /*void debug(int checkTimes){
   CarnivoreP5 c2;
   c2 = new CarnivoreP5(this);
   if(c.readString()=="ping"){
   c.write("Got ping"); //c;
   }
   if(trigger==true){
   println("(" + c2.strTransportProtocol + " packet) " + c2.senderSocket() + " > " + c2.receiverSocket());
   }
   }*/
   void networkRestart(){
     c.clear();
     c.stop();
     c = new Client(_myApplet, permanenentIP, permanentPort);  // Connect to server on port

     c.write(permanentHost); // Be polite and say who we are
     c.write(c.ip());
   }
   void shutdown(){

         saveStrings(/Users/colechristini/Desktop/DatabaseFiles/usernames.txt,temp);
         saveStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt,encryptedpasswords);
         saveStrings(/Users/colechristini/Desktop/DatabaseFiles/interests.txt,tempinterests);
         c.clear();
         c.stop();
         exit();
       }
     }

   }
   void networkShutdown(){
     c.clear();
     c.stop();
   }

} // class Database

void setup() {

}

/*void packetEvent(CarnivorePacket c){
 trigger=true;
 }*/
