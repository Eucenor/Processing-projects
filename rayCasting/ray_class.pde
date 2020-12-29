class ray extends linef
{
 
  float t,u;
  ray(PVector pos,float angle)
  {
    
    this.pos=pos;
    this.dir=PVector.fromAngle(angle).mult(0.1);
  }
  ray()
  {
    
    this.pos.x=100;
    this.pos.y=150;
    this.dir.x=150;
    this.dir.y=150;
  }
  
  
  float getU()
  {
    return u;
  }
  
  PVector cast(linef wall)
  {
     float x1=wall.getpos().x;
     float y1=wall.pos.y;
     
     float x2=wall.dir.x;
     float y2=wall.dir.y;
     
     float x3=this.pos.x;
     float y3=this.pos.y;
     
     float x4=this.pos.x+this.dir.x;
     float y4=this.pos.y+this.dir.y;
     float dem=((x1-x2)*(y3-y4))-((y1-y2)*(x3-x4));
     
     if(dem==0)
     {
       
       return new PVector(0,0);
      
     }
    else
     {
       this.t=(((x1-x3)*(y3-y4))-((y1-y3)*(x3-x4)))/dem;
       this.u=-(((x1-x2)*(y1-y3))-((y1-y2)*(x1-x3)))/dem;
       if(t>0 && t<1 && u >0)
       {
         float px=(x1+t*(x2-x1));
         float py=(y1+t*(y2-y1));
        return new PVector(px,py);
       }
       else
       {
        return new PVector(0,0);
       }
     }
  }
  void drawline()
  {
    
    stroke(255);
    push();
    translate(this.pos.x,this.pos.y);
    line(0,0,this.dir.x,this.dir.y);
    pop();
    //or you can use this line without using translate
    //line(this.pos.x,this.pos.y,this.pos.x+this.dir.x,this.pos.y+this.dir.y);
 
  }
  /*void lookat(float x,float y,float len)
  {
    
    this.dir.x=x-this.pos.x;
    this.dir.y=y-this.pos.y;
    this.dir.normalize().mult(len);
  }*/
}
