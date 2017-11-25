import processing.pdf.*; // importar librería para PDF
boolean imprimir;

void setup() {
  size(400, 400);
  imprimir = false;
}
void draw( ) {
  // si apreto el mouse se guarda un archivo PDF
  if (imprimir == true) {
    beginRecord(PDF, "####.pdf"); // nombre del archivo
  }

  //acá irán sus funciones
  ellipse(100, 100, 500, 500);

  if (imprimir == true) {
    endRecord(); // cierra el archivo
  }
  imprimir = false;
}

void keyPressed() {
  // cambiar dibujar
  if (key == '+') {
    imprimir =! imprimir;
  }
}
void mousePressed() {
  imprimir = !imprimir;
}