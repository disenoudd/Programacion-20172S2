float x, y, vx, vy, t, m, step, update, cambio;
color c0, c1, c2, c3;

void setup() {
  size(600, 800);
  m = 40;
  t = 100;
  step =  .01;
  cambio = 1;
}

void draw( ) {
  background(51);
  for(int i = 0; i < 30; i++) {
    for(int j = 0; j < 40; j++) {
      float posx = map(i, 0, 29, width * .1, width * .9);
      float posy = map(j, 0, 39, height *.1, height * .9);
      // int r = (int)random(3);
      int r = (int)random(3);
      if(r == 0) {
        cuadradoLinea(posx, posy, 10, color(255, 0, 255), color(0, 255, 255));
      } else if (r == 1) {
        //circuloPuntos(posx, posy, 10, color(255, 255, 0), color(0, 255, 255));
      } else {
        //triangulo(posx, posy, 8, color(255, 255, 0), color(0, 255, 255));
      }
    }
  }
noLoop();
}

void keyPressed() {
  if (key == '+') {
    redraw();
  }
}

void cuadradoLinea(float x, float y, float t, color c1, color c2) {
  noFill();
  strokeWeight(2);
  stroke(c1);
  rectMode(CENTER);
  rect(x, y, t, t);

  strokeWeight(1);
  stroke(c2);
  line(x - t * 1.5, y, x + t * 1.5, y);
}

void circuloPuntos(float x, float y, float t, color c1, color c2) {
  noStroke();
  fill(c1);
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