class Forces{
  float g=9.82;
  float m = 0.1;
  float vk = 10;
  PVector Ft = new PVector();
  PVector Fv = new PVector();
  
 float grav(){
   Ft.y = g * m;
   
   return Ft.y;
   
 }
 
 float wind(int size){
   Fv.x = sqrt(size)*vk;
   return Fv.x;
 }
  
  
}
