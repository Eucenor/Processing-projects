class player
{
    float x,y,w,h,speed;
    player(float x,float y,float w,float h,float s)
    {
      this.x=x;
      this.y=y;
      this.w=w;
      this.h=h;
      this.speed=s;
    }
    player(float w,float h)
    {
      this.x=width/2;
      this.y=200+height/2;
      this.w=w;
      this.h=h;
      this.speed=5;
    }
  
    player()
    {
      this.x=width/2;
      this.y=200+height/2;
      this.w=5;
      this.h=10;
      this.speed=3;
    }
    void show()
    {
      push();
      fill(255, 60, 0);
      rect(this.x,this.y,this.w,this.h);
      pop();
    }
    void update()
    {
      if(keyPressed)
      {
      if(key=='w')
      {
        this.y-=this.speed;
      }
      if(key=='s')
      {
        this.y+=this.speed;
      }
      if(key=='a')
      {
        this.x-=this.speed;
      }
      if(key=='d')
      {
        this.x+=this.speed;
      }
      }
       if(this.x>=width)
       {
         this.x=0;
       }
       if(this.x<0)
       {
         this.x=width;
       }
       if(this.y>=height)
       {
         this.y=0;
       }
       if(this.y<0)
       {
         this.y=height;
       }
    }
    
}
