int x = 0;
int y = 0;
float d;

void setup() {
  size(512, 512);
  background(51, 51, 75);
  ellipseMode(CENTER);
  smooth();
  frameRate(30);
}

void draw() {
  d = random(420);
  strokeWeight(5);
  stroke(255, 50, 0, 5);
  fill(255, 255, 0, 10);
  translate(width / 2, height / 2);
  ellipse(x, y, d, d);

  float angle = frameCount * 0.5;
  rotate(angle);
  strokeWeight(5);
  stroke(255, 5);
  noFill();
  rectMode(CENTER);
  square(x, y, 350);
}