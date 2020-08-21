
Bold bold = new Bold();
Forces forc = new Forces();
PImage billede;
boolean lim=false;
boolean press=false;
ArrayList<Bold> list = new ArrayList<Bold>();


void setup(){
  billede = loadImage("baggrund2.jpg");
  size(1200,675);
  background(255);
  frameRate(120);
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
  for(int i =0;i<list.size();i++){
    println(list);
    Bold b = list.get(i);
    b.calc();
    b.HoldBold();
    b.calc();
    b.farveSkift();
    b.display();
    b.checkEdges();
  }
}
