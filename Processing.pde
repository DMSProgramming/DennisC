
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);

}

var x = -20;
var y = 40;
var dir = 0;

void draw() {

  background(150, 216, 255);
  fill(0, 0, 0);
  rect(x, y, 30, 30);
  
  if (dir === 0) {
    x += 3;
  } else {
    y += 3;
  }
    
  if (x > 620) {
    x = -20;
  }
  
  if (y > 620) {
    y = -20;
  }
    
}

void keyPressed() {

  if (keyCode === RIGHT) {
    dir = 0;
  } else if (keyCode === LEFT) {
    dir = 1;
  }

}
