void keyPressed(){
    if(key=='d'){
      s1.dx=s1.size;
      s1.dy=0;
    }
    
    if(key=='s'){
      s1.dx=0;
      s1.dy=s1.size;
    }
    
    if(key=='w'){
      s1.dx=0;
      s1.dy=-s1.size;
    }
    
    if(key=='a'){
      s1.dx=-s1.size;
      s1.dy=0;
    }
    if(key=='f'){
       PVector finalpart=s1.body.get(s1.body.size()-1).copy();
       s1.body.add(new PVector(finalpart.x-s1.dx,finalpart.y-s1.dy));
    }
    if(key=='r'){
      if(speed>5)
      speed-=5;
    }
    if(key=='t'){
       speed+=5;
    }
}
