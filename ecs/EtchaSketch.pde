// Jenna Umble | April 17 2024 | EtchaSketch
int x, y;
PImage etch;

void setup() {
  size(1001, 818);
  etch = loadImage("Etch.png");
  x = width/2;
  y = height/2;
}

void draw() {
  image(etch, 0, 0);
}

void mousePressed() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveU(5);
    } else if (keyCode == DOWN) {
      moveD(5);
    } else if (keyCode == LEFT) {
      moveL(5);
    } else if (keyCode == RIGHT) {
      moveRight(5);
    }
  }
}

void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveR(int l) {
  line(x, y, x+l, y);
  x+=l;
}

void moveL(int l) {
  line(x, y, x-l, y);
  x-=l;
}

void moveU( int l) {
  line(x,y, x, y-l);
  y-=l;
}

void moveD (int l) {
  line (x, y, x, y+l);
  y+=l;
}
