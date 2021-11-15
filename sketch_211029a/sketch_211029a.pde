float oX;

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

  oX = sin(random(-2, 2));

  fill(75, 0, 130);
  rect(10, 10, 480, 480);

  fill(138, 43, 226);
  circle(200 + oX, 250, 75);

  fill(123, 104, 238);
  circle(270, 250, 75);

  fill(65, 105, 225);
  circle(300, 250, 75);
}
