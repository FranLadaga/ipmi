  void dibujaMiArteOptico (boolean mousepresionado){
    
  for ( int i=0; i<18; i++) {
    rectMode(CENTER);
    float tam = map(i, 0, 18, 372, 0);
    if (mousepresionado == false ){
    colores = i%2*255;
    }
    else if (mousepresionado == true){
     calculaColorDistanciaMouse();
    }
    fill(colores);    
    pushMatrix();
    translate(600, 200);

    rect(0, 0, tam, tam);
    popMatrix();
 
  for (int x=0; x<18; x++) {
    float tama= map(x, 1.5, 18, 372, 1);
    if (mousepresionado == false){
      colores= x%2*255;
    }
   else if(mousepresionado == true){
     calculaColorDistanciaMouse();
   }
    fill(colores);
    pushMatrix();
    translate(600, 200);
    rotate(radians(angulo));
    arc(0,0,tama,tama,radians(164),radians(196));
    rotate (HALF_PI);
    arc(0, 0, tama, tama, radians(164), radians(196));
    rotate (HALF_PI);
    arc(0, 0, tama, tama, radians(164), radians(196));
    rotate(HALF_PI);
    arc(0, 0, tama, tama, radians(164), radians(196));
    popMatrix();
  }  
}
};
