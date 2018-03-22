//Jimena Torres Godínez 
//Proyecto 2: Painting like Pollock
//Grupo A1


import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import ddf.minim.*;

Box2DProcessing box2d;
Particula una;
Limite uno;



float g = 9.8;
float t;
ArrayList <Particula> Particulas;
int x=0;
int y=0;
int w=0;
int h=0;
color c;
int pantalla;
 Limite dos;
Limite tres;
dibuja Pollock;
muestra pollock2;
PFont letra1;
PFont letra2;
PFont letra3;
PFont letra4;
PImage mancha;
PImage gallery;
PImage jumpin;
PImage convergence;
PImage action;
PImage brochazo;
PImage paleta;
PImage madera;
PImage mas;
PImage menos;



  
  

void setup(){
  size(500,500 );

  background(255);
  box2d = new Box2DProcessing(this);
  size(500,500);
  box2d.createWorld();
  box2d.setGravity(0,-9.8);
  una = new Particula(200,10,10,c);
  Particulas = new ArrayList<Particula>();
 uno = new Limite(265,550,278,12);
    dos = new Limite(130,0,12,1050);
  tres = new Limite(400,0,12,1050);
  Pollock = new dibuja(x,y);
pollock2 = new muestra(w,h);
letra1 = loadFont("BritannicBold-48.vlw");
 letra2 = loadFont("Brushed-48.vlw");
letra3 = loadFont("AnotherTypewriter-48.vlw");                 
 mancha= loadImage("mancha.png");
 gallery= loadImage("gallery.png");
jumpin= loadImage("jumpin.jpg");
 convergence= loadImage("convergence.jpg");
  action= loadImage("action.png");
  brochazo= loadImage("brochazo.png");
   paleta= loadImage("paleta.png");
   madera= loadImage("madera.jpg");
   mas= loadImage("mas.png");
   menos= loadImage("menos.png");
    letra4 = loadFont("ArialMT-20.vlw");
   
   
  
}

void draw(){
  switch(pantalla){
    
    case 0:
   
  
    

   
 
  background(255);
   image(gallery,0,0,500,500);
   image(convergence,355,120,136,220);

  Pollock.display();
   image(mancha,190,120,145,215);
    image(jumpin,10,120,139,220);
    
  fill(random(50),random(0),random(0));
  
  textFont(letra2);
  textSize(32);
  text("PAINTING ",188,160);
  text("LIKE ",210,220);
  text("POLLOCK ",190,290);
 
  noStroke();
  fill(255,0,0);
  rect(180,400,130,60);
  fill(255);
  textFont(letra2);
  textSize(20);
  text("INICIAR",205,435);
   stroke(1);
  fill(0,255,0);
   
  
 
 
 
 
 if((mouseX>180)&(mouseX<310)&(mouseY>400)&(mouseY<460)){
 noStroke();
   fill(243,218,11);
 rect(173,390,143,80);
  noStroke();
  fill(255,0,0);
  rect(180,400,130,60);
  fill(255);
  textSize(20);
  text("INICIAR",205,435);
   stroke(1);
  fill(0,255,0);

 }
  break;
  
  
  
  case 1:
  
  background(125,300,200);
  image(gallery,0,0,500,500);
  image(brochazo,10,250,139,70);
   image(action,355,120,136,220);

fill(random(150),random(0),random(0));
   textFont(letra2);
   textSize(40);
  text("CREA TU PROPIA PINTURA ",15,50);
   fill(0);
    textFont(letra4);
  textSize(12);  
  text("En este programa  tendras \nla oportunidad de crear\nuna pintura inspirada en\n la corriente expresionismo\nabstracto,simulando\n la tecnica del ACTION\nPAINTING,utilizada por\nJackson Pollock. ",11,140);
  fill(255,0,0);
  textFont(letra2);
  textSize(18);
  text("INSTRUCCIONES ",185,140);
  fill(0);
  textFont(letra4);
  textSize(11);
  text("1.Utiliza el mouse para\nque las particulas salgan . ",185,180);
  textSize(11);
  text("2.Puedes cambiar el color\nde las particulas utilizando\n el teclado. ",184,230);
    textSize(11);
  text("3.Para un nuevo lienzo,\n presiona la tecla 'e' ",185,290);
  noStroke();
 
  fill(255,0,0);
  rect(180,400,130,60);
  fill(255);
  textFont(letra2);
  textSize(20);
  
  text("Comienza a \n crear",193,420);
  pollock2.display();
 if((mouseX>180)&(mouseX<310)&(mouseY>400)&(mouseY<460)){
   noStroke();
   fill(243,218,11);
  
rect(173,390,143,80);
fill(255,0,0);
  rect(180,400,130,60);
  fill(255);
  textSize(20);
  text("Comienza a \n crear",193,420);
 }
  
  break;
   
   
   case 2:
   //background(255);
   image(madera,0,0,134,500);
   
   box2d.step();
 
  image(madera,400,0,134,500);
   
  image(paleta,0,80,136,160);

  if((mouseX>130)&(mouseX<350)&(mouseY>0)&(mouseY<40)&&( pantalla==2)){
    
    Particulas.add(new Particula(mouseX,3,3,c));
    
  }
  
  for (Particula p:Particulas){
    p.display();
  }
   
  for (int i = Particulas.size()-1; i >= 0; i--) {
    Particula b = Particulas.get(i);
    if (b.done()) {
      Particulas.remove(i);
    }
  }

  
 uno.display();
  dos.display();
 tres.display();
 textFont(letra3);
  textSize(13);
  
  fill(0);
  text("Presiona la tecla\nde acuerdo al \ncolor que quieras\npintar",6,20);
  
   textFont(letra3);
  textSize(12);
  fill(0);
  text("Coloca el mouse aqui para empezar a pintar",138,18);
  
  textFont(letra3);
  fill(0,255,0);
 ellipse(85,110,30,30);
 fill(255);
 textSize(40);
 text("z",72,120);
 
   fill(0,0,255);
 ellipse(50,120,30,30);
 fill(255);
 textSize(40);
 text("x",35,130);
 
  fill(255,0,0);
 ellipse(25,140,30,30);
 fill(255);
 textSize(40);
 text("c",18,150);
 
  fill(255, 255, 0);
 ellipse(35,180,30,30);
 fill(255);
 textSize(40);
 text("v",23,190);
 
 
  fill(0);
 ellipse(58,203,30,30);
 fill(255);
 textSize(33);
 text("B",48,216);
 

 textSize(13);
  fill(0);
  text("Presiona la tecla \n para cambiar la \n gravedad y \n velocidad",6,260);
  image(menos,75,340,40,40); 

   fill(0);
 rect(50,360,30,30);
 fill(255);
 textSize(30);
 text("A",38,370);
 
  image(mas,75,380,40,40);
  fill(0);
 rect(50,400,30,30);
 fill(255);
 textSize(30);
 text("S",38,410);
 
  textSize(14);
  fill(0);
  text("Nuevo Lienzo",6,440);
  fill(255);
  rect(50,470,40,40); 
   fill(0);
 textSize(30);
 text("E",46,480);


  fill(255,0,0);
  rect(450,450,65,40);
  fill(255);
  textFont(letra2);
  textSize(20);
  
  text("Salir",420,458);
  
  if((mouseX>415)&(mouseX<480)&(mouseY>415)&(mouseY<465)){
   noStroke();
   fill(243,218,11);
  rect(450,450,75,55);
  fill(255,0,0);
  rect(450,450,65,40);
  fill(255);
  textFont(letra2);
  textSize(20);
  
  text("Salir",420,458);
  }
   break;
 
 
 

 

 
 
}
 
  }
  
  









void mousePressed(){

 switch(pantalla){
    case 0:
     if((mouseX>180)&(mouseX<310)&(mouseY>400)&(mouseY<460)){pantalla= 0;{
    pantalla =1;
  } 
}
break;

case 1:
    if((mouseX>150)&(mouseX<280)&(mouseY>400)&(mouseY<460)){pantalla= 1;{
    pantalla =2;
    background(255);
  } 
}
break;

case 2:
if((mouseX>415)&(mouseX<480)&(mouseY>415)&(mouseY<465)){
 
  

    exit();
  }

break;

 
 }

}




void keyPressed(){
   

  
  
  
if((key=='a'|| key=='A')&&(pantalla==2)){
 box2d.setGravity(0,9.8);
  
}
if((key=='s' || key=='S')&&(pantalla==2)){box2d.setGravity(0,-9.8);  }
if((key=='e' || key=='E')&&(pantalla==2)){background(255);  }


}