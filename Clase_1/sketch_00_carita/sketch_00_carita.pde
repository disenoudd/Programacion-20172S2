void setup() {
  size(200, 200);
  
  strokeWeight(0.1);
}

void draw() {
  background(239);
  scale(10);
  
  ellipse(10, 10, 14, 14);
  triangle(10, 8, 8, 11, 10, 11);
  line(6, 8, 8, 6);
  line(12, 6, 14, 8);
  rect(6, 0, 8, 4);
  ellipse(10, 13, 6, 2);
}