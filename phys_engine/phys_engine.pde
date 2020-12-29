Circle[] c1;
void setup()
{
  frameRate(60);
  size(1600,1000);
  
  c1=new Circle[500];
  //creating n number f circles
  for (int i=0;i<c1.length;i++)
  {
    c1[i]=new Circle
    (
      random(1,width-5),
      random(1,height-5),
      random(0.7,3)      
    );
  }
  
  stroke(255,255,50);
}
// draw function executes the incstuctions each frame
void draw()
{
  background(100,10,200);
  
  push();
  fill(200,10,220);
  rect(0,0,width,300+height*0.5);  
  pop();
  
  for (Circle c:c1)
  { 
      //apply friction if is on ground
      if(isOnGround(c))     
        {
          c.applyForce(Friction(c.velocity.copy(),0.03));
        }
      //a[[ly drag froce depending on the medium the circles are traverlling in
      if(isInFluid(c))
      {
        c.applyForce(Drag(c.velocity,0.05));
      }
      else
      {
        c.applyForce(Drag(c.velocity,0.001));
      }
      //applu random wind 
      c.applyForce(Wind(c.mass,0.1,new PVector(random(-1,1),random(-1,1))));
      //c.applyForce(Gravity(c.mass,0.2));
      c.show();
      
    
      if(keyPressed)
      {
        keypresses(c);
      }
  }    
}
