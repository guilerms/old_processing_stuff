void setup(){
  size(200,200);
  background(0);
  smooth();
};
void draw(){
  if(mousePressed){
    noStroke();
    fill(random(100),random(100,255),random(100,255));
    ellipse(mouseX,mouseY,10,10);
    ellipse(200-mouseX,mouseY,10,10);
    ellipse(mouseX,200-mouseY,10,10);
    ellipse(200-mouseX,200-mouseY,10,10);
  };
};
