
class Bold{
  PVector loc = new PVector ();
  PVector vel = new PVector (30,0);
  PVector acc = new PVector (0,1);
  PVector oldacc = acc;
  int size=20;
  boolean mult=false;
  color c = color(255,255,255);

  void calc(){
    vel.add(acc);
    loc.add(vel);
    println(vel);
  }
  void farveSkift(){
    if(keyPressed){
      if(key == 'f' || key == 'F'){
        c = color(random(0,255),random(0,255),random(0,255));
      }
    }
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipse(loc.x,loc.y,size,size);
  }
  void HoldBold(){
    if (dist(pmouseX,pmouseY,loc.x,loc.y)<=size/2 && mousePressed== true){
      loc.x = mouseX;
      loc.y = mouseY; 
      if (!mult){
        oldacc = acc.copy();
        acc.mult(0);
        mult = true;
      }
    }else{
     acc = oldacc.copy(); 
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
  
  
