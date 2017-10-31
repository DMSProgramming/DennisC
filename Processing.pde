
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);
  
  textMode(SCREEN);
  
  setInterval(playerMove, 350);

}

var px = 310;
var py = 310;
var dir = 0;
var speed = 20;
var firstrun = true;
var snakeA = [];

void draw() {

  if (firstrun == true) {
    firstrun = false;
    
    snakeA.unshift(new snake(px, py));
    snakeA.unshift(new snake(px - 20, py));
    snakeA.unshift(new snake(px - 40, py));
    snakeA.unshift(new snake(px - 60, py));
    snakeA.unshift(new snake(px - 80, py));
  }
    
  if (px > 610) {
    px = -10;
  }
  
  if (px < -10) {
    px = 610;
  }
  
  if (py > 610) {
    py = -10;
  }
  
  if (py < -10) {
    py = 610;
  }
    
}

void playerMove() {
  
  background(0, 0, 0);
  
  if (dir == 0) {
    px += speed;
  } else if (dir == 1) {
    px -= speed;
  } else if (dir == 2) {
    py += speed;
  } else if (dir == 3) {
    py -= speed;
  }
  
  for (var i = 0; i < snakeA.length; i++) {
    fill(66, 244, 69);
    
    if (i != (length - 1)) {
      snakeA[i] = snakeA[i + 1];
      
      rect(snakeA[i].x, snakeA[i].y, 10, 10);
      
      snakeA[i] = new snake(snakeA[i].x, snakeA[i].y, 10, 10);
    } else { 
      rect(px, py, 10, 10);
      
      snake[length - 1] = new snake(px, py);
    }
  }
  
  //fill(66, 244, 69);
  
  //PFont font = LoadFont("font.ttf");
  
  //textFont(font);
  
  //textAlign(RIGHT);
  
  //String s = px + " " py;
  
  //text(s, 10, 10);
  
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
