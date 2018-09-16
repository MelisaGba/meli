class Dentadura{
//atributos
int x,y;
int t;
int v;
int c;

Dentadura(int x_, int y_){
x = x_;
y = y_;
this.t = 7;
this.v = 8;
this.c = 4;

}
 
  
  void mDerecha(){
    this.x+=this.v;
  }
  
  void mIzquierda(){
    this.x-=this.v;
  }
  
  void mArriba(){
    this.y-= this.v;
  }
  
  void mAbajo(){
    this.y+=this.v;
  }
  
  void movMen(){
    this.x = this.x + 2;
    if(this.x>=800){
      this.x = -29*t;
  }
  }
  //limites de espacio
   void limitesa(){
  this.x = constrain(this.x,0,340-this.t);
  this.y = constrain(this.y,150,490-this.t);
  }
 void limitesb(){
  this.x = constrain(this.x,460,799-this.t);
  this.y = constrain(this.y,140,489-this.t);
  }
  void escala(){
scale(-1,1);
}
  void display(){
  pushMatrix();
  translate(x,y);
  noStroke();
  
  //encia
fill(244,41,65);
rect(t*4,  t*2,    t*10,    t*2);
rect(t*3,  t*2,    t,       t*8);
rect(t,    t*3,    t*2,     t*5);
rect(t*4,  t*8,    t*10,    t*2);

  //dientes
  fill(227,229,102);
rect(t*4,    t*4,      t*9,   t*4);
rect(t*5,    t*3,      t,     t);
rect(t*8,    t*3,      t,     t);
rect(t*11,   t*3,      t,     t);
rect(t*5,    t*8,      t,     t);
rect(t*11,   t*8,      t,     t);
rect(t*8,    t*8,      t,     t);

popMatrix();
 }
  void display1(){
  pushMatrix();
  translate(x,y);
  noStroke();
  scale(-1,1);
  //encia
fill(244,41,65);
rect(t*4,  t*2,    t*10,    t*2);
rect(t*3,  t*2,    t,       t*8);
rect(t,    t*3,    t*2,     t*5);
rect(t*4,  t*8,    t*10,    t*2);

  //dientes
  fill(227,229,102);
rect(t*4,    t*4,      t*9,   t*4);
rect(t*5,    t*3,      t,     t);
rect(t*8,    t*3,      t,     t);
rect(t*11,   t*3,      t,     t);
rect(t*5,    t*8,      t,     t);
rect(t*11,   t*8,      t,     t);
rect(t*8,    t*8,      t,     t);

popMatrix();
 }
}
Dentadura cucu;
Dentadura cucu1;
void setup(){
  size(500,500);
  
  cucu = new Dentadura(100,150);
  cucu1 = new Dentadura(300,150);
}
void draw(){

  cucu.display();
  cucu1.display1();
}
