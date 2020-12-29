
void keypresses(Circle c)
{
  if(key=='d')
  {
    c.applyForce(new PVector(2,0));
  }
  if(key=='s')
  {
    c.applyForce(new PVector(0,2));
  }
  if(key=='a')
  {
    c.applyForce(new PVector(-2,0));
  }
  if(key=='w')
  {
    c.applyForce(new PVector(0,-2));
  }
}
  
