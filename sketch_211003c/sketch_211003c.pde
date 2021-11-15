int x = 0;
int y = 0;
float d;

void setup() {
  size(512, 512);
  background(50, 12, 10);
  rectMode(CENTER);
  smooth();
  frameRate(30);
}

void draw() {
  d = random(350);
  strokeWeight(5);
  stroke(50, 0, 255, 5);
  fill(255, 0, 255, 10);
  translate(width / 2, height / 2);
  float a = sin(45);
  rotate(a);
  rect(x, y, d, d);
}