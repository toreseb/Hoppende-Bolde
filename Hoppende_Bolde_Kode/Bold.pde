  
class Bold{
  PVector loc = new PVector ();
  PVector vel = new PVector ();
  PVector acc = new PVector ();
  int size;
  
  void HoldBold(){
    if (dist(mouseX,mouseY,loc.x,loc.y)<=size/2){
      
      vel.x=0;
      vel.y=0;
      acc.x=0;
      acc.y=0;
    }
  }
}
  
  
