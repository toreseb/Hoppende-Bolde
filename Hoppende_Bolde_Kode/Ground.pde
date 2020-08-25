
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
      /*
      Bold b = list.get(i);
      float dx = x-b.loc.x;
      float dy = y-b.loc.y;
      float dis = sqrt(dx*dx+dy*dy);
      float min = x/2-b.size/2;
      if(dist<min){
        float angle = atan2(dy, dx);
        float targetX = b.loc.x + cos(angle) * min;
        float targetY = b.loc.y + sin(angle) * min;
        float ax = (targetX - x) * 0.05;
        float ay = (targetY - y) * 0.05;
        bvel2 = b.vel.copy();
        bvel2.x -= ax;
        bvel2.y -= ay;
        b.vel.set(bvel2);
        
      }
    }
    */
  }
  
  void display(){
    stroke(0);
    color c = color(255,255,255);
    fill(c);
    ellipse(x,y,d,d);
  }
  
}
