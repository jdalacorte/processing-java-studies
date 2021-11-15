float a;

void setup() {
  size(500, 500);
}

void draw() {
  background(250);
  noStroke();

  push();
  fill(250);
  stroke(100);
  rect(0, 0, 500, 500);
  pop();

  a = cos(frameCount * 0.25) * random(-1, 1);
  a = radians(a);

  fill(5);
  rect(10, 10, 480, 480);

  fill(255);
  circle(200, 250, 100);
  rotate(a);
  ellipse(300, 275, 30, 50);
}
