void setup(){
  size(600,600);
  smooth();
}

void draw(){
};

void mouseReleased(){
  background(255);
  translate(width/2,height/2);
  branch(20,10,100);
}


void branch(float c, float i, float l){
  noStroke();
  fill(45,195,90);
  ellipse (0,0,c,c);
  fill(65,110,120);
  ellipse (0,0,i,i);
  c*=0.75;
  i*=0.75;
  l*=0.8;
  if (l>10){

    pushMatrix();
    rotate (radians(random(-90,90)));
    strokeWeight(3);
    stroke(65,110,120,30);
    line(0,0,0,-l);
    translate(0,-l);
    if (random(5)>=1){ 
      branch(c,i,l);
    }
    if (random(5)>=2){ 
      branch(c,i,l);
    }
    if (random(5)>=3){ 
      branch(c,i,l);
    }
    popMatrix();
  }
}






