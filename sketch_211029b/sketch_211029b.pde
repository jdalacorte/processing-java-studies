int d;

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

  // rect left
  fill(150, 10, 0);
  rect(10, 10, 240, 480);

  // rect right
  fill(255, 150, 100);
  rect(250, 10, 240, 480);

  // triangle
  fill(255, 100, 50);
  triangle(10, 10, 490, 10, 490, 300);

  // rect bottom right
  fill(220, 0, 0);
  rect(225, 400, 350, 50);

  // orange rect top left
  push();
  d = 5;
  fill(222, 100, 0);
  for (int x = 120; x < 195; x += d) {
    for (int y = 75; y < 350; y += d) {
      fill(255, random(175), 0);
      rect(x, y, d, d);
    }
  }
  pop();
}
