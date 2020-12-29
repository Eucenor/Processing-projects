
PVector Gravity(float mass,float gravStrength,boolean down)
{
  PVector Gravity;
  if(down) {Gravity=new PVector(0,gravStrength);}
  
  else    { Gravity=new PVector(0,-gravStrength);}
return Gravity.mult(mass);
}

PVector Gravity(float mass,float gravStrength)
{
PVector Gravity=new PVector(0,gravStrength);
return Gravity.mult(mass);
}
