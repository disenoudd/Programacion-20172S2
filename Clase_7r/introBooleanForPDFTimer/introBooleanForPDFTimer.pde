float x, y, vx, vy, t1, t2, t3, m, step, update, cambio;
float mx1, mx2, my1, my2; // margen aleatorio
int iend, jend;
color c0, c1, c2, c3;
boolean dibujar;

void setup() {
  size(600, 800);
  m = 40;
  t1 = 10; t2 = 15; t3 = 15;
  step =  .01;
  cambio = 1;
  c0 = color(#717171);
  c1 = color(#909090);
  c2 = color(#100D3D);
  c3 = color(#F7DDD6);

  dibujar = true;
}

void draw( ) {
  if (dibujar == true) {
    background(255);
    for(int i = 0; i <= iend; i++) {
      for(int j = 0; j <= jend; j++) {
        // convertir i en el ancho, y j en el alto
        float posx = map(i, 0, iend, width * mx1, width * mx2); // ancho
        float posy = map(j, 0, jend, height * my1, height * my2); // alto

        int r = (int)random(3);
        if(r == 0) {
          cuadradoLinea(posx, posy, t1, c3, c2);
        } else if (r == 1) {
          circuloPuntos(posx, posy, t2, c0, c1);
        } else {
          triangulo(posx, posy, t3, c1, c3);
        }
      }
    }
  }
  dibujar = false;
  // nuevo fondo para elegir tamaños de cada forma
  noStroke();
  // stroke(0);
  fill(255, 190);
  rectMode(SQUARE);
  rect(0, 0, width, height * .075);

  // las mismas funciones de arriba, solo una modificable por teclado
  cuadradoLinea(width * .45, 40, t1, c3, c2);
  circuloPuntos(width * .5, 40, t2, c0, c1);
  triangulo(width * .55, 40, t3, c1, c3);

  if (frameCount % 20 == 0) {
    c0 = color(random(255), random(255), random(255));
    c1 = color(random(255), random(255), random(255));
    c2 = color(random(255), random(255), random(255));
    c3 = color(random(255), random(255), random(255));
    t1 = random(-10, 15);
    t2 = random(-25, 25);
    t3 = random(-35, 35);
  }

  if (frameCount % 60 == 0) {
    iend = (int)random(10, 50);
    jend = (int)random(10, 20);
    mx1 = random(0, .4);
    mx2 = 1 - mx1;
    my1 = random(0, .4);
    my2 = 1 - my1;
    dibujar = true;
  }

}

void keyPressed() {
  // dibujar todo el poster nuevamente
  if (key == '+') {
    dibujar = true;
  }
  // cambia parámetros de tamaño
  if (key == '1') {
    t1 += 2;
  }
  if (key == '2') {
    t1 -= 2;
  }
  if (key == '3') {
    t2 += 2;
  }
  if (key == '4') {
    t2 -= 2;
  }
  if (key == '5') {
    t3 += 2;
  }
  if (key == '6') {
    t3 -= 2;
  }

  //cambia todos los colores
  if (key == 'c') {
    c0 = color(random(255), random(255), random(255));
    c1 = color(random(255), random(255), random(255));
    c2 = color(random(255), random(255), random(255));
    c3 = color(random(255), random(255), random(255));
  }
}

// un cuadrado sin relleno cruzado horizontalmente por una línea
void cuadradoLinea(float x, float y, float t, color c1, color c2) {
  noFill();
  strokeWeight(2);
  stroke(c1);
  rectMode(CENTER);
  rect(x, y, t, t);

  strokeWeight(3);
  stroke(c2);
  line(x - t * 1.5, y, x + t * 1.5, y);
}

// un círculo lleno con dos puntos verticales
void circuloPuntos(float x, float y, float t, color c1, color c2) {
  noStroke();
  fill(c1, random(100, 200));
  ellipse(x, y, t, t);

  strokeWeight(4);
  stroke(c2);
  point(x, y - t * .8);
  point(x, y + t * .8);
}

void triangulo(float x, float y, float t, color c1, color c2) {
  noFill();
  strokeWeight(2);
  stroke(c1);
  triangle(x-t, y + t/2, x+t, y + t/2, x, y - t);

  strokeWeight(6);
  stroke(c2);
  point(x, y);
}
