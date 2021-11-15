int g = 15;
int m = 15;

void setup() {
  size(512, 512);
  noLoop();
}

void draw() {
  background(20, 0, 0);
  noFill();
  stroke(255);

  float d = 10;

  for (int i = m; i <= width-m; i+=g) {
    for (int j = m; j <= height-m; j+=g) {
      float x1 = random(d);
      float y1 = -random(d);
      float x2 = -random(d);
      float y2 = random(d);
      float x3 = random(d);
      float y3 = random(d);
      float x4 = random(d);
      float y4 = random(d);

      stroke(random(255), random(75), random(15));
      strokeWeight(3);
      pushMatrix();
      translate(i, j);
      quad(x1, y1, x2, y2, x3, y3, x4, y4);
      popMatrix();
    }
  }
}

void keyPressed() {
  if (key==' ') redraw();
}
