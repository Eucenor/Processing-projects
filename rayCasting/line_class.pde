class linef
{
  ArrayList<linef> list=new ArrayList();
  PVector pos=new PVector(0,0);
  PVector dir=new PVector(0,0);
  linef(float x1,float y1,float x2,float y2 )
  {
    this.pos.x=x1;
    this.pos.y=y1;
    this.dir.x=x2;
    this.dir.y=y2;
    
  }
  linef(){};
  PVector getpos()
  {
    return this.pos;
  }
  PVector getdir()
  {
    return this.dir;
  }
  void setpos(PVector p)
   {
     this.pos=p;
   }
  void setdir(PVector d)
  {
    this.dir=d;
  }
    void drawline()
  {
    push();
    stroke(strokecolor);
    line(this.pos.x,this.pos.y,this.dir.x,this.dir.y);
    pop();
  }
  /*void drawIntersectingPoint(PVector p,float radius)
  {
      circle(p.x,p.y,radius);
  }*/
  
}
