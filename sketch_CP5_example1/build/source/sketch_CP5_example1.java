import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import org.rsg.carnivore.*; 
import org.rsg.lib.Log; 
import processing.net.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_CP5_example1 extends PApplet {

// A Simple Carnivore Client -- print packets in Processing console
//
// Note: requires Carnivore Library for Processing (http://r-s-g.org/carnivore)
//
// + Windows:  first install winpcap (http://winpcap.org)
// + Mac:      first open a Terminal and execute this commmand: sudo chmod 777 /dev/bpf*
//             (must be done each time you reboot your mac)




CarnivoreP5 c;

public void setup(){
  
  background(255);
  Log.setDebug(true); // Uncomment for verbose mode
  c = new CarnivoreP5(this);
  //c.setVolumeLimit(4); //limit the output volume (optional)
  //c.setShouldSkipUDP(true); //tcp packets only (optional)
}

public void draw(){}

// Called each time a new packet arrives
public void packetEvent(CarnivorePacket p){
  println("(" + p.strTransportProtocol + " packet) " + p.senderSocket() + " > " + p.receiverSocket());
  //println("Payload: " + p.ascii());
  //println("---------------------------\n");
}


Client c;
String data;

public void setup() {
  size(200, 200);
  background(50);
  fill(200);
  c = new Client(this, "www.ucla.edu", 80);  // Connect to server on port 80
  c.write("GET / HTTP/1.0\n");  // Use the HTTP "GET" command to ask for a webpage
  c.write("Host: my_domain_name.com\n\n"); // Be polite and say who we are
}

public void draw() {
  if (c.available() > 0) {    // If there's incoming data from the client...
    data += c.readString();   // ...then grab it and print it
    println(data);
  }
}
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_CP5_example1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
