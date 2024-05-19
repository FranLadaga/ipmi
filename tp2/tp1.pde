int buttonX = 50;    // Posición X del botón
int buttonY = 50;    // Posición Y del botón
int buttonSize = 50; // Tamaño del botón
PImage obra;
PImage mural1;
PImage mural2;
int estado;
PFont fuenteNueva;


float x;
void setup(){
  size(640,480);
  obra= loadImage("data/obra.jpg");
  mural1= loadImage("data/mural1.jpg");
  mural2= loadImage("data/mural2.jpg");
  fuenteNueva=loadFont("forsaking.vlw");
  textFont(fuenteNueva);
  textAlign(CENTER);
  
}
void draw(){
  
  image(mural1,0,0,640,480);
  
  if ( estado==0 ) {
   
   
    fill(0);
    
    textSize(45);
    
      text("ELDEN RING\n !HAZ CLICK PARA COMENZAR¡", width/2,height/2);
    
  } else if ( estado==1 ) {
    
    fill(0);
    
    textSize(40);

    fill(0); 
    text("ELDEN RING ES UN VIDEOJUEGO\n PUBLICADO EN 2022\n SIENDO ESTE EL MAS ESPERADO\n DE TODA LA SAGA SOULS", x, 200);
    x+=2;

    if ( x>width+100 ) {
      
      estado = 2;
      x = 700;
    }
  } else if ( estado==2 ) {
    
    image(mural2,0,0,640,480);
    
    //fill(255);
    fill(0);
    textSize(40);
    text("LA SAGA SOULS\n ES DESARROLLADA POR LA COMPAÑIA\n FROM SOFTWARE\n LA CUAL TOMO MUCHO RENOMBRE\n EN LA ULTIMA DECADA\n DENTRO DEL MUNDO DE LOS VIDEOJUEGOS", x, 130);

    
    x-=4;
    if (x<-100) {
      
      estado = 3;
      x = 0;
    }
  } else if ( estado==3 ) {
    
    image(obra,0,0,640,480);
    
    //fill(255);    
    fill(0);
    textSize(40);
    text("EL JUEGO RESULTO EN UN EXITO\n CON MILLONES DE VENTAS\n Y CRECIMIENTO DE LA SAGA", 320, x);

    x+=3;
      
      rect(buttonX, buttonY, buttonSize, buttonSize);
      fill(255);
      strokeWeight(3);
      textSize(15);
      text("reiniciar",buttonX+26, buttonY+30);
     {
      
    }
  }
}

void mousePressed() {
   
  if ( estado==0 ) {
    
    estado = 1;
    x=-300;
  } else if ( estado==1 ) {
    estado = 1;
  } else if ( estado==2 ) {
    estado = 2;
  } else if (mousePressed && mouseX > buttonX && mouseX < buttonX + buttonSize &&
      mouseY > buttonY && mouseY < buttonY + buttonSize)
      estado=0;
      
}
