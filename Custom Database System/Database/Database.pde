
import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
boolean trigger=false;

boolean update;
Class Column{

StringList x;
Column(){}
void appendInSingle(String m){
  x.append(m);

}
void appendInMultiple(String[] m){
  x.append(m);

}
void getString(String m,int i){
  m=x.get(i);

}
void removeString(String m){
  for(int i=0;i<x.size();i++){
    if(x.get(i)==m){
      x.remove(i);
      i=x.size();
}

    }


  }
  void remove(int i){
    x.remove(i);
  }
void getSize(int i){
  i=x.size();



}
void  getSum(String m,int z){
  for(int i=0;i<x.size();i++){
    if(x.get(i)==m){
      z=i
      i=x.size();
      }
    }
}
}






class Database {
  int[] columnns= new int[2];
  int sizeC;
Column[] column= new Column[sizeC];
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

String[] getUser= new String[3];
boolean userFound;
String[] encryptedpasswords= new String[length];
int user=0;
PApplet _myApplet;
int pageSize;
Database(int arraylength,int _pageSize, PApplet myApplet) {
  sizeC=arraylength;
  pageSize=_pageSize;
  lengthStr[1]=str(arraylength);
  saveStrings("length.txt",lengthStr);
    length=arraylength;
    _myApplet=myApplet;

  } // Database (constructor)


/*void startup(){

  temp = loadStrings("/Users/colechristini/Desktop/DatabaseFiles/usernames.txt");
  tempPasswords=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt");
  tempinterests=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/interests.txt");

    x[0].appendInMultiple(temp);
    passwords.append(tempPasswords);
    interests.append(tempinterests);

      none[1]=int(nullvar);
      none[2]=int(nullvar);
      saveStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt,none);

    }
  }*/

void blockSelect(int start,int end,int columnstart,int columnend){
columns[0]=columnstart;
columns[1]=columnend;
  block[0]=start;
  block[1]=end;
}
void blockDelete(){
  for(int z=columns[0];z<columns[1];z++){
  for(int i=start;i<end;i++){
    column[z].remove(i);


}}}

void splitByBlock(int length){
  splitBlocks=new String[length][sizeC];
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
      usernames.set(i,x[0]);
      passwords.set(i,x[1]);
      interests.set(i,x[2]);
    }
  } // sortdata


  void insert(String[] user) {
    user = new String[3];
    StringList m;
    for(int i)

      temp[length-1]=user[q][0]+insert+user[q][1]+insert+user[q][2];

      sort(temp);

      for (int i=0; i<temp.length; i++) {
        x[i]=split(temp[i], ";");
        usernames.set(i,x[0]);
        passwords.set(i,x[1]);
        interests.set(i,x[2]);
      }
  }  // insert


  void deleteuser(String toDelete) {
    int z;
    String n;
    usersGroupSort.append(toDelete);
    usersGroupSort.sort();
    for (int i=0; i<length; i++) {
      if(toDelete==usersGroupSort.get(i)){
        z=i-1;
        n=str(z);

      }
      temp = loadStrings("/Users/colechristini/Desktop/DatabaseFiles/usernames"+n+".txt");
      tempPasswords=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp"+n+".txt");
      tempinterests=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/interests"+n+".txt");

        usernames.append(temp);
        passwords.append(tempPasswords);
        interests.append(tempinterests);
        usernames.remove(z);
        passwords.remove(z);
        interests.remove(z);

        int z;
             for(int i=0;i<round(usernames.size();i++){
               if(usernames.get(0)==usersGroupSort[i]){
                   z=i;

               }
             }
             for(int i=0;i<pageSize;i++){

               pageTemp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
               if(i==pageSize){
                 int m;
                 for(int q=0;q<usersGroupSort.size();q++){
                   String f = new String[3];
                   f=split(pageTemp[0],";");

                 saveStrings("page"+z+".txt",pageTemp)
                 usernames.clear();
                 interests.clear().
                 passwords.clear();

               }
      }
    }
  } // deleteuser
void convertToPages(){
  usersGroupSort=new String[round(usernames.size()/pageSize)];
  String[] pageTemp = new String[pageSize];
for(int z=0;z<round(usernames.size()/pageSize);z++){
for(int i=0;i<pageSize;i++){

  pageTemp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
  if(i==pageSize){
    String f = new String[3];
    f=split(pageTemp[0],";");
    usersGroupSort[z]=f[0];
    String x=str(z);
    saveStrings("page"+x+".txt",pageTemp)
    usernames.clear();
    interests.clear().
    passwords.clear();

  }



}
if(z==round(usernames.size()){

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
for(int i=0;i<pageSize;i++){
  temp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
  mirror.write(temp[i]);

}

}
void updateFromMaster(){
  String d;
  String[] c =new String[pageSize][3];
  for(int i=0;i<pageSize;i++){
    temp[i]=mirror.readString();
    c[i]=split(temp[i], ";");
    usernames.set(i,c[i][0]);
    passwords.set(i,c[i][1]);
    interests.set(i,c[i][2]);
    pageTemp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
    if(i==pageSize){
      for(int x=0;x<usersGroupSort.size();x++){
        if(c[0][0]==usersGroupSort[i]){
          d=str(i);
        }
        saveStrings("page"+d+".txt",pageTemp)

    }
    }
}

}
void write(String ip,String message,int port){
  Client writer;
  writer=new Client(_myApplet,ip,port);
  writer.write(message);

}
/*void setField(int userNumber,int field,String toSet){
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
}*/

  void network() {
    c2.write(2);
if(c.read()==3){
  update=true;

}
    if (c.read()==2) {
      int m;
      getUser = new String[3];//send if you want to have user inserted
      getUser[0]=c.readString();//username
      for (int i=0; i<usersGroupSort.size(); i++) {
        if (getUser[0]==usersGroupSort[i]) {
          isExisting=true;
          m=i;
          i==usersGroupSort.size();
        } }
        delay(5);
        if (isExisting==true) {

          getUser[2]=c.readString();//password
          delay(5);
          getUser[3]=c.readString();//interests
          String n=str(m);

          temp = loadStrings("/Users/colechristini/Desktop/DatabaseFiles/usernames"+n+".txt");
          tempPasswords=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp"+n+".txt");
          tempinterests=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/interests"+n+".txt");

            usernames.append(temp);
            passwords.append(tempPasswords);
            interests.append(tempinterests);
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
String n;
StringList q;
q=usersGroupSort.copy();
q.append(username);
q.sort;
        for (int l=0; l<q.size(); l++) {
          if (username==q.get[l]) {
            user=l-1;
            c.write(1);

            delay(5);
            n=str(user)
            l=q.size();
          }
          else{
            c.write(0);
          }
        }


        temp = loadStrings("/Users/colechristini/Desktop/DatabaseFiles/usernames"+n+".txt");
        tempPasswords=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp"+n+".txt");
        tempinterests=loadStrings("/Users/colechristini/Desktop/DatabaseFiles/interests"+n+".txt");

          usernames.append(temp);
          passwords.append(tempPasswords);
          interests.append(tempinterests);
          usernames.append(getUser[0]);
          passwords.append(getUser[1]);
          interests.append(getUser[2]);

          for(int q=0;q<pageSize;q++){
            if(usernames.get(q)==username){
              c.write(13);
              //(˚º˚)
              delay(5);
              q=pageSize;
              String password=c.readString();
              if(password)


            }


          }
        }
      }
    }
  }}
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
     String[] pageTemp = new String[pageSize];
     String z;
          for(int i=0;i<round(usernames.size();i++){
            if(usernames.get(0)==usersGroupSort[i]){
                z=str(i);

            }
          }
          for(int i=0;i<pageSize;i++){

            pageTemp[i]=usernames.get(i)+insert+passwords.get(i)+insert+interests.get(i);
            if(i==pageSize){

              saveStrings("page"+z+".txt",pageTemp);


            }
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
