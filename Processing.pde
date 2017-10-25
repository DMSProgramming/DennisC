
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);

}

var x = 0;

void draw() {

    background(150, 216, 255);
    rect(x, 30, 30, 30);
    x += 3;
    
}
