import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
 boolean trigger=false;
String key = "  8cd82e4af6649117";
String message= "0123456789012345";
String[] encryptedpasswords



class Database {
  String username;
  Client c;
  boolean isExisting;
  int nullvar=000;
  int length;
    String[] tempinterests= new String[length];
  String[] temp= new String[length];
  String insert=";";
  String[] merge=new String[3];
  String[][] users = new String[length][3];
  String[] getUser= new String[3];
  boolean userFound;
  String[] encryptedpasswords= new String[length];

int user=0;
PApplet _myApplet;

  Database(int arraylength, String[][]usersinternal, PApplet myApplet) {
    arraylength=length;
    _myApplet=myApplet;
    usersinternal= new String[arraylength][3];
    for (int i=0; i<length; i++) {
      for (int x=0; x<2; x++) {
        length=arraylength;
        users[i][x]= usersinternal[i][x];
      }
    }
  } // Database (constructor)


void startup(){

  temp = loadStrings("usernames.txt");
  encryptedpasswords = loadStrings("passwords.txt");
  tempinterests=loadStrings("interests.txt");
  for(int z; z<length;z++){
    SecretKeySpec skeySpec_decode = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

    Cipher cipher_decode = Cipher.getInstance("AES/ECB/PKCS5PADDING");
    cipher_decode.init(Cipher.DECRYPT_MODE, skeySpec_decode);

    byte[] decrypted_original = cipher_decode.doFinal(DatatypeConverter.parseBase64Binary(encryptedpasswords[z]));
    users[z][1]=temp[z];
    users[z][2] = decrypted_original;
    users[z][3]=tempinterests;
}




}
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


  void networkStart(String ip, int port, String hostname) {
    c = new Client(_myApplet, ip, port);  // Connect to server on port

    c.write(hostname); // Be polite and say who we are
  }   // networkStart


  void networkRead() {

    if (c.readString()=="insertUser") {//send if you want to have user inserted
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
          getUser = new String[3];
          for (int v=0; v<2; v++) {
            users[length-1][v]=getUser[v];
          }
          for (int q=0; q<length; q++) {
            temp[q]=users[q][0]+insert+users[q][1]+insert+users[q][2];
            sort(temp);
          }
          for (int z=0; z<temp.length; z++) {
            users[i]=split(temp[i], ";");
          }//insert
          c.write("done");
        }
      }
      if (c.readString()=="login") {
        username=c.readString();

        for (int l=0; l<users.length; l++) {
          if (username==users[l][1]) {
            user=l;
            c.write("user found");
            delay(5);
            userFound=true;
          }
        }
      }
      if (userFound==true) {
        if (c.readString()==users[user][2]) {
          c.write("correct password");
        } else {
          c.write("wrong password");
        }
      }
    }
  } // networkRead
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
   void
} // class Database

void setup() {

}

/*void packetEvent(CarnivorePacket c){
 trigger=true;
 }*/
