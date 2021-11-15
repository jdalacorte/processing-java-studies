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

  fill(60, 179, 200);
  rect(10, 10, 480, 480);

  fill(90, 250, 100);
  rect(100, 250, 50, 500);

  fill(50, 255, 100);
  circle(189, 100, 50);

  fill(0, 100, 0);
  circle(250, 350, 75);

  fill(200, 255, 50);
  circle(250, 215, 160);

  fill(255, 255, 50, 40);
  circle(250, 215, random(145, 150));
  fill(225, 225, 50, 70);
  circle(250, 215, random(135, 140));
  fill(200, 200, 50, 80);
  circle(250, 215, random(125, 130));
}
