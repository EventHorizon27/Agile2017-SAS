import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;

class mainServer{
  String[] activitiesString;
  int numberofMirrors;
  String[] mirrorIp;
  int[] mirrorPorts;
  String[] routerIp;
  int[]routerPorts;
  Server[] s;
  Server[] s2;
  int[] activities;
  String[] temp2 = new String[3];
  PApplet _myApplet;
  mainServer(int mirrors, String[] mIp, int[] mP,String[] rIp,int[] rIp, PApplet myApplet){
    numberofMirrors=mirrors;
    mIp = new String[mirrors];
    rIp = new String[mirrors];
    mP = new int[mirrors];
    rP = new int[mirrors];
    mirrorIp= new String[mirrors];
    routerPorts = new String[mirrors];
    mirrorPorts = new int[mirrors];
    routerPorts = new int[mirrors];
    activities = new int[numberofMirrors];
    activitiesString = new String[numberofMirrors];
    for(int i=0;i<mirrors;i++){
      mirrorIp[i]=mIp[i];
      routerIp[i]=rIp[i];
      mirrorPorts[i]=mP[i];
      routerPorts[i]=rIp[i];

    }
  }
  void networkStart(){
    for(int i=0;i<mirrors;i++){
      s[i]=new Server(_myApplet,routerPorts[i]);
      s2[i]=new Server(_myApplet,mirrorPorts[i]);

    }
  }
  void networkDo(){

    for(int i=0;i<mirrors;i++){
      if(s[i].read()==12){
        for(int z=0;z<numberofMirrors;z++){
        delay(5);
        activities[i]=s[i].read
        activitiesString[z]=str(activities[z])+";"+rIp[z]+";"+mIp[z];
      }}
      if(s[i].read()==4){

        sort(activitiesString);
        temp2=split(activitiesString[i],";");
        s[i].write(temp2[i]);

      }

    }
  }

}
