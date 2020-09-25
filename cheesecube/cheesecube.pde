float largo = 600;

void setup() {
  size(int(largo), int(largo));
  smooth();
  background(0);
  noStroke();
  rectMode(CENTER);
  fill(255);
  translate(width/2, height/2);
  quadro(largo);
}

void quadro(float L) {
  L = L/3;
  //rotate(radians(1/L*100));
  if (L > 1) {
    rect(0, 0, L, L);

    pushMatrix(); 
    translate(L, L);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(L, 0);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(L, -L);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(0, -L);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(-L, -L);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(-L, 0);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(-L, L);
    quadro(L);
    popMatrix();

    pushMatrix(); 
    translate(0, L);
    quadro(L);
    popMatrix();
  }
}

