
Bold bold = new Bold();
Forces forc = new Forces();

void setup(){
  size(700,800);
  background(255);
  frameRate(60 );
}

void draw(){
  background(255);
  bold.calc();
  bold.HoldBold();
  bold.farveSkift();
  bold.display();
  bold.checkEdges();
  
  
}
