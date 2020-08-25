class Bold{
  PVector loc = new PVector ();
  PVector vel = new PVector (3,0);
  PVector acc = new PVector (0,0);
  PVector oldacc = acc;
  int size=50;
  boolean held=false;
  boolean in = false;
  color c = color(255,255,255);

  void calc(){
    if (!held){
    acc.y += forc.grav();
    if (keyPressed){
      if (key == ' '){
      acc.x += forc.wind(size);
        }
      }
    }
    if (acc.x+forc.air(size).x >=0){
      acc.x +=forc.air(size).x;
    }
    if (acc.y+forc.air(size).y >=0){
      println(acc);
      acc.y +=forc.air(size).y;
    }
    
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
    
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
      held = true;
    }else{
      held = false;
    }   
  }
  
  void checkEdges(){
    if (loc.x > width-size/2) {
      loc.x = width-size/2;
      vel.x *= -1;
    } else if (loc.x < 0+size/2) {
      vel.x *= -1;
      loc.x = 0+size/2;
    }
    if (loc.y > height-size/2) {
      vel.y *= -1;
      loc.y = height-size/2;
    }else if (loc.y < 0+size/2) {
      vel.y *= -1;
      loc.y = 0+size/2;
    }
  }
  void collision(){
    for(int i=0 ;i<list.size();i++){
      Bold b = list.get(i);
      PVector nV = PVector.sub(b.loc,loc);
      nV.rotate(-PI/2);
      float rota = PVector.angleBetween(loc,nV);
      
      if (dist(loc.x,loc.y,b.loc.x,b.loc.y)<= size&&dist(loc.x,loc.y,b.loc.x,b.loc.y)!=0){
        vel.rotate(rota);
        
      }
    }
    
  }
  void reset(){
    for(int i=0 ;i<list.size();i++){
      list.remove(i);
    }
  }
  
}
  
  
