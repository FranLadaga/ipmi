// Francisco Ladaga tp2 88293/6  https://youtu.be/FklS_Pe0Mqo
 
int angulo;
color colores;
boolean mousepresionado = false;
float tam;
PImage ilusion;
void setup() {
  size(800, 400);
  ilusion = loadImage("data/ilusion.jpg");
  colores = calculaColorDistanciaMouse();
}
void draw() {
  angulo = mouseX;
  background(255);
  image( ilusion, 0, 0, 400, 400);
  //invoco mi funcion
  colores = calculaColorDistanciaMouse();
  dibujaMiArteOptico (mousepresionado == true);
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


color calculaColorDistanciaMouse() {
  // Calcular la distancia entre el mouse y el borde derecho de la ventana
  float distanciaDerecha = width - mouseX;
  // Mapear la distancia a un rango de colores
  float colorValue = map(distanciaDerecha, 0, width, 0, 255);
  color colorCalculado = color(colorValue, 150, 255 - colorValue);
  
  return colorCalculado;
}
  
