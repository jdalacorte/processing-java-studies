float d = 10;
float r, c;
float mono = d;

void setup() {
  size(512, 512, P3D);
  frameRate(30);
}

void draw() {
  background(73, 23, 23);
  c = map(mouseX, 0, width, 150, 0);
  r = map(mouseY, 0, height, 225, 255);

  if (mono < 35) {
    mono += 0.2;
  } else if (mono >= 35) {
    mono = -mono;
  }

  for (float x = 0; x < width * 2; x += 50) {
    for (float y = 0; y < height * 2; y += 35) {
      push();
      noStroke();
      translate(x - width / 2, y - width / 2);
      rotateX(frameCount * 0.07);
      rotateY(frameCount * -0.3);
      fill(r, c, 0);
      circle(0, 0, d / 1.1);
      pop();

      push();
      translate(x - width / 2, y - width / 2);
      rotateX(frameCount * -0.01);
      rotateY(frameCount * 0.01);
      stroke(255, 0, 75);
      noFill();
      box(mono);
      pop();
    }
  }
}