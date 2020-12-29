boolean collision(player p1,block b)
    {
      return 
      p1.x>b.x-5 
      && 
      p1.x<(b.x+b.w-5) 
      && 
      p1.y>b.y-5 
      && 
      p1.y<(b.y+b.h-5);
     
    }
