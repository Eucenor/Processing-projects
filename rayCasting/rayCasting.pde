particle p=new particle();
linef lines=new linef();
float t=0;
float u=0;
PVector pt;
float strokecolor=50;
PVector temp=new PVector(width+1,height+1);
void setup()
{
  size(800,600);
  for(int i=0;i<10;i++)
  {
     lines.list.add(new linef(random(0,width),random(0,height),random(0,width),random(0,height)));
  }
  lines.list.add(new linef(10,10,width-10,10));
  lines.list.add(new linef(10,10,10,height-10));
  lines.list.add(new linef(10,height-10,width-10,height-10));
  lines.list.add(new linef(width-10,10,width-10,height-10));
  frameRate(60);
}

void draw()
{
  background(0);
 //draws the walls 
  for(linef x : lines.list)
  {
      x.drawline();
  }
  //casts ray on walls
  p.look();  
  
  p.show(mouseX,mouseY);
}
void keyPressed(){
if(keyPressed)
{
  if(key=='d')
  {
   if(strokecolor<255)
   strokecolor+=1;
  }
  if(key=='a')
  {
    if(strokecolor>0)
    strokecolor-=1;
  }
  
}

}
