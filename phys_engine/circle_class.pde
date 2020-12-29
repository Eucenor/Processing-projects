// a circle
class Circle extends Obj
{
  float radius;
  //circle's constructor
  Circle(float x,float y,float r)
  {
    super(new PVector(x,y));
    this.radius=r;
  }
  Circle(float x,float y,float r,float m)
  {
    super(new PVector(x,y),m);
    this.radius=r;
  }
  //creating a circle on screen. Delegates this to the inbuile circle class of processing
  void create()
  {
    circle(this.getlocation().x,this.getlocation().y,this.radius);
  }
  //change the location of the circle
  void move()
  {
    this.getvelocity().add(this.getacceleration());
    this.getlocation().add(this.getvelocity());
    
  }
  // bound the circle withing the screen can be reused
  void constraints()
  {
    
    if((this.getlocation().x+this.radius)>width)
    {
       this.getlocation().x=width-this.radius;
       this.getvelocity().x*=-1;
    }
    
    if((this.getlocation().x-this.radius)<=0)
    {
      this.getlocation().x=this.radius;
      this.getvelocity().x*=-1;
    }
    
    if ((this.getlocation().y+this.radius)>height)
    {
      this.getlocation().y=height-this.radius;
      this.getvelocity().y*=-1;
    }
    
    if((this.getlocation().y-radius)<=0)
    {
      this.getlocation().y=this.radius;
      this.getvelocity().y*=-1;
    }
  }
  
  void show()
  {

  this.create();
  this.move();
  this.constraints();
  this.getacceleration().mult(0);  
  }
  //apply force function gethers all forces and calculates acceleration of the circle
  //i.e Newton's second law with mass!
  void applyForce(PVector f)
  {  
    this.getacceleration().add(PVector.div(f,this.getmass()));
  }
}
