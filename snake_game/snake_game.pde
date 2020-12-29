
int speed=20;
food f;
snake s1;
void setup(){
  size(800,800);
  s1=new snake(20);
  f=new food();
  
}
void draw(){
  frameRate(speed);
  background(10);
  grid();
  s1.isEatingFood();
  s1.hasEatenItself();
  s1.update();
  s1.show();
  f.show(); 
}
void grid()
{
  for(int i=0;i<height;i+=80)
  {push();
  stroke(255);
    line(i,0,i,height);
    line(0,i,width,i);
    pop();
  }
}
