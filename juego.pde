
Circulo c1;
PImage Fondo;
PImage rain;
PImage Enemy;
PImage gover;
PImage fondofin;
PFont f;  

int x=0;
float xen=0;
int r =int(random(100,400));
boolean game;
int punt; 
PImage puntuaimg;

void setup() {
  size (601, 209);
  f = createFont("VCR OSD Mono", 16);
  Fondo=loadImage("fondo.png");
  fondofin=loadImage("fondofin.png");
  Enemy=loadImage("en.png");
  Enemy.resize(45,35);
  gover=loadImage("gover.png");
  gover.resize(500,500);
  puntuaimg=loadImage("punt.png");
  puntuaimg.resize(300,300);
  rain=loadImage("rain.png");
  rain.resize(200,200);
  c1=new Circulo();
  xen = Fondo.width + r;
}

void draw() {
  //background(0, 255, 0);
  println(punt);
  background(Fondo);
  image(Fondo,x,0);
  image(Fondo,x+Fondo.width,0);
  image(puntuaimg,330,-120);
  
  textFont(f, 19); 
  fill(255);
  text(punt, 555, 26);
  
  image(rain,xen-60,85);
  image(Enemy,xen, 101.46004);
  xen=xen-10;
    if(xen<-20){
      punt=punt+1;
      xen=(random(500,1200));
    }
 

  
  x--;
  if(x<-Fondo.width)
    x=0;
  if(((c1.x)-(xen+15))>0 && ((c1.x)-(xen+60))<0 && ((c1.y)-(101.46004+30))>0){
    noLoop();
    image(fondofin,x,0);
    image(fondofin,x+Fondo.width,0);
    image(gover,50,-150);
    
  }
  c1.mover();
  c1.display();
  
    
}

void mousePressed() {
  loop();
  c1.y=200;
  c1.vel=10;
  xen=Fondo.width + r;
  punt=0;
  
}
    
