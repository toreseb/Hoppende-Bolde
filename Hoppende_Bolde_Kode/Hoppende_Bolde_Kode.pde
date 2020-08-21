
Bold bold = new Bold();
Forces forc = new Forces();
PImage billede;

void setup(){
  billede = loadImage("baggrund.jpg");
  size(700,800);
  background(255);
  frameRate(60 );
}

void draw(){
  image(billede,0,0, width, height);
  bold.calc();
  bold.HoldBold();
  bold.farveSkift();
  bold.display();
  bold.checkEdges();
  
  
}
