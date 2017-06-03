
import processing.net.*;
import org.rsg.carnivore.*;
import org.rsg.lib.Log;
boolean trigger=false;

boolean update;
Class Link {
 int a;
 int b;
 boolean is2way;
    Link() {
      a=0;
      b=0;
    }



  {
    void setR(int q, int z, boolean x){
      a=q;
      b=z;
      is2way=x;
    }

    void read(int q, int z, boolean x){
      q=a;
      b=z;
      x=is2way;
    }
  }
}}}
class Database {
  backupPath;
  storagePath;
  Arraylist<Link> references;
  Arraylist<Link> tables;
  ArrayList<StringList> columns;
  PApplet _myApplet;
int allocated;
int used;
int disk;
int depth;
int auto;
  Database( PApplet myApplet) {


    _myApplet=myApplet;
  } // Database (constructor)



  void query(int column, int row, String r) {
if(columns.get(column)==null){
    columns.add(column);
    columns.get(column).append(loadStrings("columns"+column+".txt"));
    r=columns.get(column).get(row);
  }
  else {
r=columns.get(column).get(row);

  }
  }



  void search(int column, StringList returns, boolean all, boolean containing) {
    StringList q;
    if (all==true&&containing==true) {
      String s;
      for (int i=0; i<columns.size(); i++) {
        for (int v=0; v<columns.get(i).size(); v++) {
          s=columns.get(i).get(v);
          if (StringIndex(s, str)!=-1) {
            q.append(str(i)+","+str(v+1));
          }
        }
      }
    }


    if (all==true&&containing==false) {
      for (int i=0; i<columns.size(); i++) {
        for (int v=0; v<columns.get(i).size(); v++) {
          if (columns.get(i).get(v)==str) {
            q.append(str(i)+","+str(v+1));
          }
        }
      }
    }


    if (all==true&&containing==true) {
      String s;

      for (int v=0; v<columns.get(column).size(); v++) {
        s=columns.get(column).get(v);
        if (StringIndex(s, str)!=-1) {
          q.append(str(column)+","+str(v+1));
        }
      }
    }


    if (all==false&&containing==false) {
      for (int v=0; v<columns.get(i).size(); v++) {
        if (columns.get(column).get(v)==str) {
          q.append(str(column)+","+str(v+1));
        }
      }
    }
    returns.append(q);
  }



  void setType(int column, String type) {
    String[] m= new String[5];
    m=split(type, "");
    String[] v= new String[2];
    v=split(columns.get(column).get(0), ":");
    columns.get(column).set(0, v[0]+m[0]);
  }



  void makeLink(int a, int b,boolean c){
    references.add(references.size()+1,new Link());
    references.get(references.size()).set(a,b,c);




  }

void addColumn(String name,String type,int m){
  columns.add(m,new StringList());
  columns.get(columns.size()).add(0,name+":"+type);


}

  void add(String t,int column){
    columns.get(column).append(t);
  }

void set(int column, int row,String toDo){


  columns.get(column).set(row,toDo);


}



void makeTable(int start,int end){

  tables.add(tables.size()+1,new Link());
  tables.get(tables.size()).set(start,end,true);


}
void config(int allocate,int depth2, boolean auto2,String filepath,String filepath2){
  storagePath=filepath;
  backupPath=filepath2;
  allocated=allocate;
  depth=depth2;
  auto=auto2;



}
void do(){





}



void backup(){
  String timeStamp=str(year())+":"+str(month())+":"+str(day())+":"+str(hour())+":"+str(minute())+":"+str(second());
  StringList m=new StringList();
  StringList stamps=new StringList();
  StringList status=new StringList();
  status.append(loadStrings(storagePath+"status.txt"));
  for(int i=0;i<columns.size();i++){
    m.append(loadStrings(storagePath+i+".txt"));
    if(loadStrings(storagePath+i+".txt")==null&&status.get(i)!="del"){
      stamps.append(loadStrings(backupPath+"backups.txt"));
      for(int m=1;m<stamps.size();m++){
        if(loadStrings(storagePath+stamps.get(stamps.size()-m)+".txt")!=null){
          m.append(loadStrings(storagePath+stamps.get(stamps.size()-m)+".txt"))
          saveStrings(backupPath+":"+timeStamp+":"+i+".txt",m);
          m.clear();
          break;
          }
        }
      }
    saveStrings(backupPath+":"+timeStamp+":"+i+".txt",m);
    m.clear();
    if(i==columns.size()){
      stamps.append(loadStrings(backupPath+"backups.txt"));
      stamps.append(timeStamp);
      saveStrings(backupPath+"backups.txt",stamps)



      }

    }

  }


void restore(int column,int backup){
    StringList stamps=new StringList();
    stamps.append(loadStrings(backupPath+"backups.txt"));
    StringList m=new StringList();
    m.append(loadStrings(backupPath+backup+".txt"));
    saveStrings(storagePath+column+".txt");

  }
} // class Database

void setup() {
}


/*void packetEvent(CarnivorePacket c){
 trigger=true;
 }*/
