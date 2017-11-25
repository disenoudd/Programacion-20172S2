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

  // una elipse en el centro
  noStroke();
  fill(#FF2E63);
  ellipse(width *.5, height * .5, 200, 200);

  // si b es falso, líneas horizontales color del fondo
  if (b == false) {
    stroke(#EAEAEA);
    strokeWeight(40);
    line(0, height * .5, 200, height * .5);
    line(width, height * .5, width - 200, height * .5);
  }

  // si b es verdadero, líneas verticales color del cuadrado
  if (b == true) {
    stroke(#252A34);
    strokeWeight(40);
    line(width * .5, 100, width * .5, 200);
    line(width * .5, height - 100, width * .5, height - 200);
  }
}

void keyPressed() {
  // al presionar letra a cambia b entre V y F
  if (key == 'a') {
    b = !b;
  }
}