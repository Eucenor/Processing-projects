class Obj
{
  //every object has a location, velocity ,mass and acceleration as its properties
  PVector location=new PVector(0,0);
  PVector velocity=new PVector(0,0);
  PVector acceleration=new PVector(0,0);
  float mass=1;
  //constructors
  Obj(PVector p1)
  {
    this.location=p1;
  }
  Obj(PVector p1,float m)
  {
    this.location=p1;
    this.mass=m;
  }
  //getter functions
  PVector getlocation()
  {
    return this.location;
  }
  PVector getvelocity()
  {
    return this.velocity;
  }
  PVector getacceleration()
  {
    return this.acceleration;
  }
  float getmass()
  {
    return mass;
  }
}
