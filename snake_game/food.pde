class food{
  PVector location;
  int w,h;
  PVector foodColour;
  food(){
    this.w=this.h=20;
    this.location=new PVector(random(0,width-this.w*2),random(0,height-this.h*2));
    foodColour=new PVector(255,100,255);
  }
  void show()
  {push();
    fill(this.foodColour.x,this.foodColour.y,this.foodColour.z);
    rectMode(CENTER);
    rect(this.location.x,this.location.y,this.w,this.h);
    pop();
  }
  void changeLocation()
  {
     this.location=new PVector(random(0,width-this.w),random(0,height-this.h));
  }
}
