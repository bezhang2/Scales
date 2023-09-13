void setup() {
  size(500, 500);
}

void draw() {
  boolean shift = true;
  for (int y = 500; y > -25; y -= 25)
  {
    for (int x = 0; x < 575; x += 75)
    {
      if (shift == true)
        scale(x - 37, y);
      else
        scale(x, y - 12);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y) {
  int a = 0;
  int b = 0;
  float c = 0;
  noFill();
  while ((a < 33) && (b < 33)) {
    stroke(c, c, c);
    triangle(a + x, b + y, 37.5 + x, (65 - b) + y, (75 - a) + x, b + y);
    a++;
    b++;
    c += 255/((float)(Math.random() * 100) + 50);
  }
  strokeWeight(2);
  fill(0);
  curve(55 + x, 5 + y, x, y, 37.5 + x, 65 + y, 130 + x, 40 + y);
  curve(20 + x, 5 + y, 75 + x, y, 37.5 + x, 65 + y, -45 + x, 40 + y);
}
