class snake{
  //Data members
  PVector location;
  PVector col;
  float size;
  ArrayList<PVector> body=new ArrayList<PVector>();
  float dx,dy;
  
////////////////constructor
  snake(float size){
    this.location=new PVector(random(0,floor(width-size)),random(0,floor(height-size)));
    this.col=new PVector(255,10,50);
    this.body.add(location);
    this.dx = size;
    this.dy = 0;
    this.size=size;
  }
///////////////////////////////
  void update(){
    PVector prev = body.get(0).copy();
    body.get(0).x += this.dx;
    body.get(0).y += this.dy;
    constrain();
    for (int i=1;i<this.body.size();i++)
    {      
      PVector currentBodyPart=this.body.get(i).copy();
      this.body.get(i).x=prev.x;
      this.body.get(i).y=prev.y;
      prev=currentBodyPart;
    }
    
  }
  /////////////////////////
   void constrain()
  {
    PVector head=this.body.get(0);
    if(head.x>width)
    {
      head.x = 0;
    }
    if( head.x<0)
    {
      head.x=width;
    }
    if( head.y>height)
    {
      head.y=0;
    }
    if( head.y<0)
    {
       head.y=height;
    }
  }
  ///////////////////////////
  void isEatingFood(){  
     PVector head=this.body.get(0).copy();
    if (
       head.x < (f.location.x + f.w) 
         &&
         (head.x + this.size)> f.location.x
         &&
         head.y <( f.location.y + f.h) 
         &&
        ( head.y + this.size )> f.location.y
       )
     {
       PVector finalpart=s1.body.get(s1.body.size()-1).copy();
       s1.body.add(new PVector(finalpart.x-s1.dx,finalpart.y-s1.dy));
       f.changeLocation();
     }
  }
 /////////////////////// 
  void hasEatenItself()
  {
     PVector head=this.body.get(0);
     for(int i=1;i<this.body.size()-1;i++)
     {
       if(head.equals(this.body.get(i)))
       {
         
         for(int j=i;j<this.body.size()-1;j++)
         {
           this.body.remove(j);
         }
         break;
       }
     }
  }
  //////////////////////////////
  void show(){  
    boolean f=true;
    for(PVector part:this.body)
    {
      
      if(f)
      {
        this.col.x=255;
        this.col.y=0;
        this.col.z=10;
        f=false;
      }
      else
      {
        this.col.x=255;
        this.col.y=10;
        this.col.z=100;
      }
      push();
      rectMode(CENTER);
      fill(this.col.x,this.col.y,this.col.z);
      square(part.x,part.y,this.size);
      pop();
    }  
  }
  
}
