
float prec = 10;
int r=0,g=0,b=0;

void setup() {
  size(600,600);
  background(255);
  noStroke();
  println("start");
  rec(300, 300, 600);
}

void draw() {
}

void rec(float pointX, float pointY, float size) {
  fill(random(255),random(255),random(255), 100);
  ellipse(pointX, pointY, size, size);
  if (size <= prec) return;
  float r = size/2;
  float r2 = r/2;
  rec(pointX-r2, pointY-r2, r);
  rec(pointX+r2, pointY+r2, r);
  rec(pointX-r2, pointY+r2, r);
  rec(pointX+r2, pointY-r2, r);
}
