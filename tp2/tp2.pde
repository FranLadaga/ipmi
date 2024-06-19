color colores;
boolean mousepresionado = false;
float tam;
PImage ilusion;
void setup() {
  size(800, 400);
  ilusion = loadImage("data/ilusion.jpg");
  colores = color(255,0,0);
}
void draw() {
  background(255);
  image( ilusion, 0, 0, 400, 400);
  //invoco mi funcion
  dibujaMiArteOptico();
}
//provoco el efecto  
void mousePressed(){
  if (mouseButton == LEFT && mousepresionado == false){
    mousepresionado = true;
    println("Inicio!");
  }
  if (mouseButton == RIGHT && mousepresionado == true){
    mousepresionado = false;  
    println("Reinicio!");
  }
};
  
  
