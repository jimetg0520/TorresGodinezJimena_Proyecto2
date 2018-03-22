class dibuja{
  //estos son lo atributos ppales
  int x,y;

  
  
  //constructor
  dibuja (int x_, int y_){
    x=x_;
    y=y_;
   
  
  }
  
  void display(){
  
  Pollock();
  }
 
  
  void Pollock(){
    pushMatrix();
  translate(10,100);
 
  stroke(1);
  fill(252,208,180);
  //cabeza
   rect(400,200,45,45);
   //orejas
   rect(390,210,10,20);
   rect(445,210,10,20);
   //ojos
   fill(0);
   rect(410,220,8,8);
   rect(427,220,8,8);
   //cabello 
   rect(400,200,10,15);
   rect(435,200,10,15);
   //cuello
   fill(157);
   rect(410,245,25,10);
  
   //camisa
   fill(0);
   rect(400,255,45,70);
    fill(157);
    rect(415,255,15,70);
    rect(390,260,10,60);
    rect(445,260,10,60);
    //pantalon
    fill(0,0,255);
    rect(400,325,22,50);
     rect(422,325,22,50);
     //zapatos
     fill(0);
     rect(400,375,22,10);
      rect(422,375,22,10);
       fill(252,208,180);
       rect(390,320,10,10);
       rect(445,320,10,10);
       //boca
       fill(0);
       ellipse(420,237,8,8);
       //cigarro
       fill(255);
       rect(410,235,10,7);
       fill(255,164,032);
       rect(405,235,5,7);
       fill(157);
       rect(390,227,5,5);
       rect(399,234,5,5);
       
    
  popMatrix();
  
    
  }
  
}

  