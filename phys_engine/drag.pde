PVector Drag(PVector velocity,float cons)
{
  PVector drag=velocity.copy();
  drag.normalize();
  float speed=velocity.mag();
  return drag.mult(-cons*speed*speed);
  
}
