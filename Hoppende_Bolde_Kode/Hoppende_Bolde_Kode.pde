
Bold bold = new Bold();
Forces forc = new Forces();
ArrayList<Ground> listg = new ArrayList<Ground>();
int gamount=5;
PImage billede;
boolean lim=false;
boolean press=false;
boolean ground=false;
ArrayList<Bold> list = new ArrayList<Bold>();


void setup(){
  if (ground){
    for (int i = 0; i < gamount; i++){
    listg.add(new Ground());
    }
  }
  billede = loadImage("baggrund2.jpg");
  size(1200,675);
  background(255);
  frameRate(60);
}

void draw(){
  if(keyPressed){
    if(key == 'm'&& !press){
      list.add(new Bold());
      press = true;
    }
  }else{
    press = false;
  }
  background(billede);
  for(int i =0;i<listg.size();i++){
    Ground g = listg.get(i);
    g.display();
    g.bounce();
  }
  for(int i =0;i<list.size();i++){
    Bold b = list.get(i);
    
    b.calc();
    b.HoldBold();
    b.calc();
    b.farveSkift();
    b.display();
    b.checkEdges();
    b.collision();
    if(keyPressed&&key=='r'){
     b.reset(); 
    }
  }
}
