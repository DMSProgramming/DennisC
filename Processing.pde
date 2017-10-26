
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);
  
  setInterval(playerMove, 250);

}

var x = 300;
var y = 300;
var dir = 0;
var speed = 20;
var firstrun = true;
var length = 5;
var snakeA = [];

void draw() {

  if (firstrun == true) {
    firstrun = false;
    background(0, 0, 0);
    fill(66, 244, 69);
    snakeA.push(rect(x, y, 10, 10));
    snakeA.push(rect(x - 20, y, 10, 10));
    snakeA.push(rect(x - 40, y, 10, 10));
    snakeA.push(rect(x - 60, y, 10, 10));
    snakeA.push(rect(x - 80, y, 10, 10));
  }

  background(0, 0, 0);
  
  for (var i = 0; i < snakeA.length; i++) {
    fill(66, 244, 69);
    
    if (i != snakeA.length) {
      snakeA[snakeA.length - (i + 1)].x = snakeA[snakeA.length - (i + 2)].x;
    }
    
    rect(snakeA[snakeA.length - (i + 1)].x, snakeA[snakeA.length - (i + 1)].y, 10, 10);
  }
    
  if (x > 610) {
    x = -10;
  }
  
  if (x < -10) {
    x = 610;
  }
  
  if (y > 610) {
    y = -10;
  }
  
  if (y < -10) {
    y = 610;
  }
    
}

void playerMove() {
  if (dir == 0) {
    x += speed;
  } else if (dir == 1) {
    x -= speed;
  } else if (dir == 2) {
    y += speed;
  } else if (dir == 3) {
    y -= speed;
  }
}

void keyPressed() {

  if (keyCode == RIGHT && dir != 1) {
    dir = 0;
  } else if (keyCode == LEFT && dir != 0) {
    dir = 1;
  } else if (keyCode == DOWN && dir != 3) {
    dir = 2;
  } else if (keyCode == UP && dir != 2) {
    dir = 3;
  }

}
