
Bold bold = new Bold();

void setup(){
  size(700,800);
  background(255);
}

void draw(){
  background(255);
  bold.calc();
  bold.display();
  bold.checkEdges();
  
}
