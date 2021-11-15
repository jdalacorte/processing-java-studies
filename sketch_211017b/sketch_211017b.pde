float d = 10;
float r, c;
float monoW = 5;
float monoH = 15;

void setup() {
  size(512, 512, P3D);
  frameRate(30);
}

void draw() {
  background(23, 73, 23);
  c = map(mouseX, 0, width, 0, 75);
  r = map(mouseY, 0, height, 225, 255);

  monoW++;
  if (monoW > width) {
    monoW = -monoW;
  }

  for (float x = 0; x < width * 2; x += 50) {
    for (float y = 0; y < height * 2; y += 50) {
      push();
      noStroke();
      translate(x - width / 2, y - width / 2);
      rotateY(frameCount * 0.07);
      rotateX(frameCount * -0.3);
      fill(r, 0, c);
      circle(0, 0, d / 1.1);
      pop();

      push();
      translate(x - width / 2, y - width / 2);
      rotateX(frameCount * 0.01);
      rotateY(frameCount * -0.001);
      stroke(175, 175, 0);
      noFill();
      box(monoW, monoH, monoW + monoH);
      pop();
    }
  }
}