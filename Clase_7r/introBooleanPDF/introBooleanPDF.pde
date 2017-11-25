import processing.pdf.*; // importar librería para PDF
boolean dibujar, imprimir;

void setup() {
  size(400, 400);
  dibujar = true;
  imprimir = false;
}

void draw( ) {
  // si apreto el mouse se guarda un archivo PDF
  if (imprimir == true) {
    beginRecord(PDF, "archivo.pdf"); // nombre del archivo
  }
    // dibujar falso, cuadrado
    if (dibujar == false) {
      background(#DB5758);
      rectMode(CENTER);
      noStroke();
      fill(#717171);
      rect(width/2, height/2, 100, 100);
    }
    // dibujar verdadero, ellipse
    if (dibujar == true) {
      background(#EBAFB0);
      noStroke();
      fill(#4C97B1);
      ellipse(width/2, height/2, 100, 100);
    }

  if (imprimir == true) {
    endRecord(); // cierra el archivo
  }
  imprimir = false;
}

void keyPressed() {
  // cambiar dibujar
  if (key == '+') {
    dibujar =! dibujar;
  }
}

void mousePressed() {
  imprimir = !imprimir;
}
