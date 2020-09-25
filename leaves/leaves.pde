void setup() {
  smooth();
  ellipseMode(CENTER);

  size(600, 600);
  background (0);

  noFill();
  stroke(255);
  for (int i = 0; i < 200; i++) {
    pushMatrix();
 //   translate(0, i);
    rotate(radians(137.5*i));
  //  translate(width/2, height/2);
    ellipse(0, 0, 80, 600);
    popMatrix();
  }
}

