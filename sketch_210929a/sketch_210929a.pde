void setup() {
  size(512, 512);
  background(50, 12, 10);
  rectMode(CENTER);
  frameRate(13);
}

void draw() {
  noStroke();
  drawGlitch();
}

void drawGlitch() {
  for (int i = 0; i < height; i++) {
    int eSize = int(random(43, 100));
    fill(255, random(255), random(90));
    rect(random(width), random(height), eSize / random(5), eSize / random(5));
  }
}
