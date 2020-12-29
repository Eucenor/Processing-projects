boolean isInFluid(Circle c)
{
return c.location.y>(300+height*0.5);
}
boolean isOnGround(Circle c)
{
  return c.location.y==(height-c.radius);
}
