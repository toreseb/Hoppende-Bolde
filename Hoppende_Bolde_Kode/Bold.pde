
class Bold{
  PVector loc = new PVector ();
  PVector vel = new PVector (30,0);
  PVector acc = new PVector (0,1);
  int size=20;
  
  void calc(){
    vel.add(acc);
    loc.add(vel);
  }
  
  void display(){
    stroke(0);
    fill(255);
    ellipse(loc.x,loc.y,size,size);
  }
  
  void HoldBold(){
    if (dist(mouseX,mouseY,loc.x,loc.y)<=size/2 && mousePressed== true){
      loc.x = mouseX;
      loc.y = mouseY;
      vel.x=0;
      vel.y=0;
      acc.x=0;
      acc.y=0;
    }
  }
  
  void checkEdges(){
    if (loc.x > width) {
      loc.x = width;
      vel.x *= -1;
    } else if (loc.x < 0) {
      vel.x *= -1;
      loc.x = 0;
    }
 
    if (loc.y > height) {
      vel.y *= -1;
      loc.y = height;
    } else if (loc.y < 0) {
      vel.y *= -1;
      loc.y = 0;
    }
  }
}
  
  
