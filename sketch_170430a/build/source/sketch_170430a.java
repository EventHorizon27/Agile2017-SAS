import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.net.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_170430a extends PApplet {
  public void setup() {



class Database {



  int nullvar=000;
  int length;
  String[] temp= new String[length];
  String insert=";";
  String[] merge=new String[3];
  String[][] users = new String[length][3];
  String[] getUser= new String[3];



  Database(int arraylength, String[][]usersinternal,Client c) {
    arraylength=length;
    usersinternal= new String[arraylength][3];
    for (int i=0; i<length; i++) {
      for (int x=0; x<2; x++) {
        length=arraylength;
        users[i][x]= usersinternal[i][x];
      }
    }
  } // Database (constructor)


  public void sortdata() {
    for (int q=0; q<length; q++) {
      temp[q]=users[q][0]+insert+users[q][1]+insert+users[q][2];
      sort(temp);
    }
    for (int i=0; i<temp.length; i++) {
      users[i]=split(temp[i], ";");
    }
  } // sortdata


  public void insert(String[] user) {
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


  public void deleteuser(String toDelete) {
    for (int i=0; i<length; i++) {
      if (users[i][0]==toDelete) {
        for (int v=0; v<2; v++) {
          users[i][v]=str(nullvar);
        }
      }
    }
  } // deleteuser


  public void networkStart(String IP,int port , String HostName) {
    TCPClient c = new Client(this, "127.0.0.1", 5204);  // Connect to server on port
    c.write("GET / HTTP/1.0\n");  // Use the HTTP "GET" command to ask for a webpage
    c.write(HostName); // Be polite and say who we are
  }   // networkStart


  public void networkRead() {
    if (c.readString=="insertUser") {//send if you want to have user inserted
      getUser[1]=c.readString();//username
      delay(5);
      getUser[2]=c.readString();//password
      delay(5);
      getUser[3].readString();//interests
      database.insert(getUser);//insert
      c.write("done");
    }
    if (c.readString=="login") {
      int user;
      for (int i=0; i<length; i++) {
        if (c.readString()==users[i[1]]) {
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
    }
  } // networkRead

} // class Database
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_170430a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
