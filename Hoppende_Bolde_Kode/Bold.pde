
class Bold{
  PVector loc = new PVector ();
  PVector vel = new PVector ();
  PVector acc = new PVector (1,1);
  int size;
  
  void calc(){
    vel.add(acc);
    loc.add(vel);
  }
  
  void display(){
    stroke(0);
    fill(255);
    circle(loc.x,loc.y,20);
  }
  
  void HoldBold(){
    if (dist(mouseX,mouseY,loc.x,loc.y)<=size/2){
      
      vel.x=0;
      vel.y=0;
      acc.x=0;
      acc.y=0;
    }
  }
}
  
  
