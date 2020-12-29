//this method is dependent on Circle class
PVector Friction(PVector velocity,float coefficientOfFriction)
{     
    return velocity.normalize().mult(-coefficientOfFriction);    
}
