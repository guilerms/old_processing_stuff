void setup(){
  size(200,200);
  background(0);
  smooth();
};
void draw(){
  if (mousePressed){
    stroke (random(100),random(100,255),random(100,255));
    line(mouseX,mouseY,200-mouseX,mouseY);
  };
};
