/*
This sketch builds on a prior work, "I don't even know what to call this", created by Federico Renteria
 http://studio.sketchpad.cc/sp/pad/view/ro.9Zcqp2HsPtlmR/rev.1325
 */

float x, y;

float side = 100;

void setup() {
  size(1000, 1000);
}
void draw() {
  // frameRate(06000);
  x=random(side);
  y=random(side);
  stroke(random(255), random(255), random(255));  
  for (int i = 0; i < width/side; i = i+1) {
    line(x+i*side, 0, x+i*side, height);
  }
  for (int i = 0; i < height/side; i = i+1) {
    line(0, y+i*side, width, y+i*side);
  }
}

void keyPressed() {
  if (key == 's') {
    noLoop();
  } else
  {
    loop();
  }
}
