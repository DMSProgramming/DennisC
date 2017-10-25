
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);

}

var x = -15;

void draw() {

  background(150, 216, 255);
  fill(0, 0, 0);
  rect(x, 30, 30, 30);
  x += 3;
    
  if (x > 616) {
    x = -15;
  }
    
}
