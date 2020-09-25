float largo = 300;

void setup() {
  size(int(largo*3/2), int(largo*3/2));
  smooth();
  background(0);
  stroke(255);
  noFill();
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  translate(width/2,height/2);
  equilatero(0,0,largo);
  flake(0);
}

void flake(int I) {
  if (I < 10) {
    I++;
    pushMatrix();
    rotate(I*PI);
    equilatero(0, 0, largo/(3^I));
    flake(I+1);
    popMatrix();
  }
}

void equilatero(float x, float y, float L) {
  float x1 = x+L/2;
  float y1 = y+L*sqrt(3)/6;
  float x2 = x-L/2;
  float y2 = y1;
  float x3 = x;
  float y3 = y - (L*sqrt(3))/3;
  triangle(x1, y1, x2, y2, x3, y3);
}

