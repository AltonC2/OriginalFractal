void setup() {
  background(0);
  size(600, 600);
  noLoop(); // Ensures draw() is only called once
  sierpinski(0, 0, 600, 600); 
}

void mousePressed() {
  background(0);
  sierpinski(0, 0, 600, 600); 
}

void draw() {

}

public void sierpinski(int x, int y, int h, int w) {
  if (h < 1 || w < 1) {
    return;
  }

  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  rect(x, y, w, h); // Draw rectangle

  // Recursive calls to draw smaller rectangles
  sierpinski(x, y + h/4, h/2, w/2); 
  sierpinski(x + w/2, y + h/4, h/2, w/2); 
}
