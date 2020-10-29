 class Circulo{
  float x;
  float y;
  int rad;
  float vel;
  float grav;
  int salto;
  Circulo(){
    x = 50;
    y = 200;
    vel=10;
    grav=0.25;
    rad = 25;
    salto=0;
  }
  
  void display(){
    ellipse(x-15, y-30, 0.5*rad, 0.5*rad);
  }
  
  void mover(){
    vel=vel+grav;
    y=y+vel;
    
    if(y>height){
      y=height;
      vel=0;
      salto=1;
    }
    
   if(keyPressed && key==(CODED)){
      if(keyCode==UP && salto==1){
        vel=-8;
        salto=0;
      }
    } 
    
    
    
    
  }
  
 }
