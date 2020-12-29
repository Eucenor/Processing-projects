class particle
{
  PVector location=new PVector(width/2,height/2);
  ArrayList<ray> ray1=new ArrayList();
  float radius=0;
  
  particle(float x,float y,float radius)
  {
    this.location.x=x;
    this.location.y=y;
    this.radius=radius;
    for(int i=0;i<360;i+=0.1)
    {
      this.ray1.add(new ray(this.location,radians(i)));
    }
  }
  
  particle()
  {
    for(int i=0;i<360;i+=1)
    {
      this.ray1.add(new ray(this.location,radians(i)));
    }
  }
  
  void show(float x,float y)
  {
    this.location.x=x;
    this.location.y=y;
   
    ellipse(this.location.x,this.location.y,30,30);
     
    for(ray r:ray1)
    {
      r.drawline();
    }
  }
  
void look()
{
for(ray r1 : p.ray1)
  {
    PVector closest=null;
    float record=MAX_FLOAT;
    for(linef x: lines.list)
    {
      pt=r1.cast(x);
      
      if(pt.mag()>0)
      {
         float d=PVector.dist(p.location,pt);
         if(d<record)
         {
           record=d;
           closest=pt;
         }
      }
     
    }
    if(closest!=null /*&& PVector.dist(closest,p.location)<=50*/)
    {
      push();
      stroke(255,50);
      strokeWeight(3);
     line(r1.getpos().x,r1.getpos().y,closest.x,closest.y);
     pop();
    }
  }  
}
  
}
