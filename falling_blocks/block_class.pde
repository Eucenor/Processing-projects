class block
{
  float mass=0;
  float w,h,x,y;
  block()
  {
    this.w=random(30,50);
    this.h=this.w;
    this.x=map(sin(random(1)),0,1,width,0);
    this.y=-this.h;
    
  }
  void update()
  {
    this.y+=speed;
  }
   void show()
   {
     push();
     fill(0, 255, 123);
     rect(this.x,y,this.w,this.h);
     pop();
   }
  
}
