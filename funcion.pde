  void dibujaMiArteOptico(){
    
  for ( int i=0; i<18; i++) {
    rectMode(CENTER);
    float tam = map(i, 0, 18, 372, 0);
    
    if (mousepresionado == false){
      colores = i%2*255;
    }
    else if(mousepresionado == true){
      colores = round(random(#0D5FB4));
    }
    fill(colores);
    rect( 600, 200, tam, tam);
  }
  for (int x=0; x<18; x++) {
    float tama= map(x, 1.5, 18, 372, 1);
    if (mousepresionado == false){
      colores = x%2*255;
    }
    else if(mousepresionado == true){
      colores = round(random(#0D5FB4));
    }
    fill(colores);
    arc(600,200,tama,tama,radians(164),radians(196));
    pushMatrix();
    translate(600, 200);
    rotate(PI/2);
    arc(0, 0, tama, tama, radians(164), radians(196));
    rotate (PI/2);
    arc(0, 0, tama, tama, radians(164), radians(196));
    rotate(PI/2);
    arc(0, 0, tama, tama, radians(164), radians(196));
    popMatrix();
  }
};
