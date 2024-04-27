PImage imagen;

void setup() {
  size(800, 400 );
  background(#2E8BD0);
  imagen = loadImage("data/paisaje.jpg");
  image(imagen, 0, 0, 400, 400);
}

void draw() {

  fill(100);
  noStroke();
  //volcan
  triangle( 400, 300, 800, 300, 600, 155);
  fill(70);
  rect(400, 300, 400, 100);
  fill(50, 70, 0);
  rect(400, 350, 400, 100);
  //nube1
  fill(255);
  ellipse(455, 100, 50, 50);
  ellipse(440, 100, 50, 50);
  ellipse(425, 100, 50, 50);
  ellipse(435, 65, 50, 50);
  ellipse(470, 65, 50, 50);
  ellipse(479, 100, 50, 50);
  //nube2
  ellipse(500, 190, 50, 50);
  ellipse(480, 190, 50, 50);
  ellipse(475, 190, 50, 50);
  ellipse(470, 190, 50, 50);
  ellipse(475, 170, 50, 50);
  ellipse(479, 100, 50, 50);
  //punta del volcan
  fill(100);
  triangle(550, 250, 650, 250, 590, 153);
  triangle(550, 250, 650, 250, 610, 153);
  rect(590, 150, 20, 20);
  //nube3
  fill(255);
  ellipse(700, 140, 50, 50);
  ellipse(705, 145, 50, 50);
  ellipse(687, 175, 50, 50);
  ellipse(670, 160, 50, 50);
  ellipse(725, 160, 50, 50);
  ellipse(729, 180, 50, 50);
  fill(110);
  triangle(600,300,810,300,810,210);
}
