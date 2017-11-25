boolean b;


void setup() {
  size(500, 500);
  b = false;
}

void draw( ) {
  // fondo gris
  background(#EAEAEA);

  // si b es verdadero, un cuadro en el centro
  if (b == true) {
    noStroke();
    fill(#252A34);
    rectMode(CENTER);
    rect(width *.5, height * .5, 400, 400);
  }

  // si b es falso, líneas horizontales color del fondo
  if (b == false) {
    
  // una elipse en el centro
  noStroke();
  fill(#FF2E63);
  ellipse(width *.5, height * .5, 200, 200);
  }
}

void keyPressed() {
  // al presionar letra a cambia b entre V y F
  if (key == 'a') {
    b = !b;
  }
}