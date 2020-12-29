import java.util.Random;
float speed=3;
player p1;
boolean hasCollided;
float r=0;
ArrayList<block> q1;
float prob=0.07;
void setup()
{
size(600,600);
p1=new player(10,30);
q1=new ArrayList(10);
q1.add(new block());
q1.add(new block());
frameRate(60);
}
void draw()
{
  background(19, 28, 46);
    p1.show();
  p1.update();
  r=random(1);
  if(r<prob)
  {
    q1.add(new block());
  }
  
  for (block b:q1)
  {
    b.show();
    b.update();
    if(collision(p1,b))
    {q1.clear();
      delay(150);
      speed=3;
      prob=0.07;
      break;
    }
  }

  if(!q1.isEmpty() && q1.get(0).y>width)
  {
    q1.remove(0);
  }
 speed+=0.001;
 prob+=0.000001;
  println(prob);
}
