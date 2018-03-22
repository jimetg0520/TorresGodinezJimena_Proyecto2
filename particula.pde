class Particula {
  float x,y,w,h;
 
  Body b;
  color c;
  float delta;
  boolean delete = false; 
  
 Particula (float x_,float w_, float h_, color c_){
   
   x = x_;
  //  y = y_;
    w = w_;
    h = h_;
    c= c_;
  
  c = color(255,169,200,80);
 

    
    // construir una definición de cuerpo;
    BodyDef bd = new BodyDef();
    // existe tipo dinámico, tipo estático y tipo kinestético; 
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
    
    // Construir el cuerpo
    b = box2d.createBody(bd);
    
    // Definir el polígono, o su contorno
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    // Definir su fixture o sus características
    FixtureDef fd = new FixtureDef();
    fd.shape =  sd;
    //parametros : densidad, fricción y rebote;
    fd.density = 1;
    fd.friction = 4;
    fd.restitution =0.5;
    
    // agregar todo al body;
    b.createFixture(fd);
    //b.setAngularVelocity(60);
    b.setLinearVelocity(new Vec2(random(-9, 5), random(2, 5)));
   b.setAngularVelocity(random(-9, 5));
    
 }
    void killBody() {
    box2d.destroyBody(b);
  }

  void delete() {
    delete = true;
  }

    
    
    
     void change() {
    c= color(255, 0, 0);
    
     }
   
  
  boolean done() {
  
    Vec2 pos = box2d.getBodyPixelCoord(b);
   
    if (pos.y > height+h*2 || delete) {
      killBody();
      return true;
    }
    return false;
  }
    
 
  
  void display(){
   delta+=0.01;
    Vec2 pos = box2d.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    // modificar el metod display;
    noStroke();
     pushMatrix();
    translate(pos.x,pos.y);
    fill(c);
    rotate(-angulo);
   rotate(delta);
    ellipse(20,0,w,h); 
    popMatrix();
    
    switch(pantalla){
      
      case 2:
    if((key=='x' || key=='X')&&(pantalla==2)){

     
     c=color(0,0,255,95);
    ellipse(20,0,w,h);
     }
    
    if(key=='z'|| key=='Z'){
       
      c=color(0,255,0,90);
    ellipse(20,0,w,h);
     }
   
  
    if(key=='c' || key=='C'){
      
      c=color(255,0,0,95);
    ellipse(20,0,w,h);
     }
  
  
   if(key=='v' || key=='V'){
    
      c=color(255,255,0,90);
       ellipse(20,0,w,h);
     }
     
     if(key=='b' || key=='B'){
    
      c=color(0,85);
       ellipse(20,0,w,h);
     }
     break;
  }
    
    
     
  }
}
    
  
    
    
    

   
      
  
  
  
  
  
  