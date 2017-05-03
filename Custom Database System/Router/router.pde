
import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
int activity;
boolean checkactive;
int time;
String databaseIP;
class serverRouter{
  String inIp;
  String outIp;
  String managerIp;
  int inPort;
  int outPort;
  int managerPort;
  Client c;
  Client c2;
  Client c3;
  PApplet _myApplet;
  serverRouter(String inip,String outip,String managerip,int inport,int outport,int managerport,PApplet mypapplet){
    inPort=inport;
    outPort=outport;
    inIp=inip;
    outIp=outip;
    _myApplet=mypapplet;
    managerIp=managerip;
    managerPort=managerport;
  }
  void networkStart() {
      c2.write(c.readString());
    c = new Client(_myApplet, inIp, inPort);  // Connect to server on port
    c2 = new Client(_myApplet,outIp,outPort);
    c3 = new Client(_myApplet,managerPort,managerIp);
    c.write("IP"+c.ip());
    c2.write("IP"+ c.ip());
    c3.write("IP"+ c.ip());
  }   // networkStart
    void network(){
      if(c.active()==true){
        c3.write(1);
      }
      if(c.active()==false){
        c3.write(2);
      }
      if(c2.active()==true){
        c3.write(3);
      }
      if(c2.active()==false){
        c3.write(4);
      }




      if(c3.read()==2){
        databaseIP=c3.readString();
      }

    }
    void activityCheck(){
      checkactive=true;
      time=millis();
        if(millis()==time+60000){
          c3.write(12);
          delay(5);
          c3.write(activity);

        }
    }
    void write(String ip,String message, int port){
      Client writer;
      writer= new Client(_myApplet,ip,port){
        writer.write(message);
      }
    }
    void networkStop(){
      c.clear();
      c2.clear();
      c3.clear();
      c.stop();
      c2.stop();
      c3.stop();
    }
}
void clientEvent(Client c) {
  if(checkactive==true){
    if(millis()<time+60000){
      activity++;
    }
  }


}
