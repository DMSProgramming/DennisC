
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);
  
  setInterval(playerMove, 250);

}

var x = 310;
var y = 310;
var dir = 0;
var speed = 20;
var firstrun = true;
var length = 6;
var snakeA = [];

void draw() {

  if (firstrun == true) {
    firstrun = false;
    /*
    snakeA.push(new snake(x, y));
    snakeA.push(new snake(x - 20, y));
    snakeA.push(new snake(x - 40, y));
    snakeA.push(new snake(x - 60, y));
    snakeA.push(new snake(x - 80, y));
    snakeA.push(new snake(x - 100, y));
    */
    
    snakeA.unshift(new snake(x, y));
    snakeA.unshift(new snake(x - 20, y));
    snakeA.unshift(new snake(x - 40, y));
    snakeA.unshift(new snake(x - 60, y));
    snakeA.unshift(new snake(x - 80, y));
    snakeA.unshift(new snake(x - 100, y));
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
  
  background(0, 0, 0);
  
  for (var i = 0; i < snakeA.length; i++) {
    fill(66, 244, 69);
    
    /*
    if (i != (length - 1)) {
      snakeA[length - (i + 1)].x = snakeA[length - (i + 2)].x;
      
      snakeA[length - (i + 1)].y = snakeA[length - (i + 2)].y;
      
      rect(snakeA[length - (i + 1)].x, snakeA[length - (i + 1)].y, 10, 10);
      
      snakeA[i + 1] = new snake(snakeA[length - (i + 1)].x, snakeA[length - (i + 1)].y);
    } else {
      rect(x, y, 10, 10);
      
      snakeA[0] = new snake(x, y);
    }
    */
    
    if (i != (length - 1)) {
      snakeA[i].x = snakeA[i + 1].x;
      snakeA[i].y = snakeA[i + 1].y;
      
      rect(snakeA[i].x, snakeA[i].y, 10, 10);
      
      snakeA[i] = new snake(snakeA[i].x, snakeA[i].y, 10, 10);
    } else { 
      rect(x, y, 10, 10);
      
      snake[length - 1] = new snake(x, y);
    }
  }
  
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
