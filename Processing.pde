
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);
  
  setInterval(playerMove, 350);

}

var x = 310;
var y = 310;
var dir = 0;
var speed = 20;
var firstrun = true;
var snakeA = [];

void draw() {

  if (firstrun == true) {
    firstrun = false;
    
    snakeA.unshift(new snake(x, y));
    snakeA.unshift(new snake(x - 20, y));
    snakeA.unshift(new snake(x - 40, y));
    snakeA.unshift(new snake(x - 60, y));
    snakeA.unshift(new snake(x - 80, y));
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
  
  background(0, 0, 0);
  
  if (dir == 0) {
    x += speed;
  } else if (dir == 1) {
    x -= speed;
  } else if (dir == 2) {
    y += speed;
  } else if (dir == 3) {
    y -= speed;
  }
  
  for (var i = 0; i < snakeA.length; i++) {
    fill(66, 244, 69);
    
    if (i != (length - 1)) {
      snakeA[i] = snakeA[i + 1];
      
      rect(snakeA[i].x, snakeA[i].y, 10, 10);
      
      snakeA[i] = new snake(snakeA[i].x, snakeA[i].y, 10, 10);
    } else { 
      rect(x, y, 10, 10);
      
      snake[length - 1] = new snake(x, y);
    }
  }
  
  text(x + " " + y, 10, 10);
  
  snakeA.length = length;
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

function snake(x, y) {
  this.x = x;
  this.y = y;
}
