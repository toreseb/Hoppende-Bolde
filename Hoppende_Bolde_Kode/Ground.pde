
class Ground {
  
  float d = random(120,120);
  float x = random(5,1200);
  float y = 675;
  int k;
  PVector gloc = new PVector(x,y);
  PVector bvel2 = new PVector();
  int fCount=0;
  Ground[] others;
    
  void bounce(){
    for(int i=0 ;i<list.size();i++){
      Bold b = list.get(i);
      PVector nV = PVector.sub(gloc,b.loc);
      nV.rotate(PI/2);
      float rota = PVector.angleBetween(b.loc,nV);
      
      if (frameCount-fCount >= 5){ 
        if (dist(b.loc.x,b.loc.y,gloc.x,gloc.y)<= d/2+b.size/2 &&dist(b.loc.x,b.loc.y,gloc.x,gloc.y)!=0){
          println(rota);
          b.vel.rotate(rota*2);
          fCount=frameCount;
          
          line(gloc.x,gloc.y,b.loc.x,b.loc.y);
          
        }
      }
      
    }
  }
  
  void display(){
    stroke(0);
    color c = color(255,255,255);
    fill(c);
    ellipse(x,y,d,d);
  }
  
}
