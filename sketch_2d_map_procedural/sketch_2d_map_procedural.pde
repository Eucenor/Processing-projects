float nx,ny;
float freq=3;
void setup()
{
  size(1920,1080);
  background(0);
  
  nx=0;
  ny=0;
  freq=12;
  float amp=-1.5;
  for(int y=0;y<height;y++)
{
 
  for (int x=0;x<width;x++)
  {
    nx=x;
    ny=y;
    push();
    nx=nx/width;
    ny=ny/height;
  
    float n=amp*noise(freq*nx,freq*ny)+1.1*noise(3*nx,3*ny)+noise(5*nx,5*ny);
    print(n);
    if(n<0.38)
    stroke(110,50,255);
    else if(n<0.4)
    stroke(240, 240, 26);
    else if(n<0.5)
    stroke(0,255,0);
    else if(n<0.6)
    stroke(30, 212, 45);
    else if (n<0.7)
    stroke(191, 168, 50);
    else if(n<0.75)
    stroke(176, 140, 30);
    else if (n<0.8)
    
    stroke(138, 113, 37);
    else
    stroke(255,255,255);
    point(x,y);
    pop();
  }
}
 
}
void draw()
{ 
  
 
}
