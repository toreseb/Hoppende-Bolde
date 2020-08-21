
Bold bold = new Bold();
Forces forc = new Forces();
PImage billede;
boolean lim=false;

void setup(){
  billede = loadImage("baggrund2.jpg");
  size(1200,675);
  background(255);
  frameRate(120);
}

void draw(){
  
  background(billede);
  
  bold.calc();
  bold.HoldBold();
  bold.calc();
  bold.farveSkift();
  bold.display();
  bold.checkEdges();
}
