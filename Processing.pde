
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);

}

var x = -20;
var y = 40;
var dir = 0;
var speed = 3;

void draw() {

  background(0, 0, 0);
  fill(66, 244, 69);
  rect(x, y, 30, 30);
  
  if (dir == 0) {
    x += speed;
  } else if (dir == 1) {
    x -= speed;
  } else if (dir == 2) {
    y += speed;
  } else if (dir == 3) {
    y -= speed;
  }
    
  if (x > 630) {
    x = -30;
  }
  
  if (x < -30) {
    x = 630;
  }
  
  if (y > 630) {
    y = -30;
  }
  
  if (y < -30) {
    y = 630;
  }
    
}

void keyPressed() {

  if (keyCode == RIGHT) {
    dir = 0;
  } else if (keyCode == LEFT) {
    dir = 1;
  } else if (keyCode == DOWN) {
    dir = 2;
  } else if (keyCode == UP) {
    dir = 3;
  }

}
