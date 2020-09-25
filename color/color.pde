void setup(){
  background(0);
  smooth();
  size(400,400);
  colorMode(HSB, 60, 100, 100, 100);
};
void draw (){
  if(mousePressed){
    noStroke();
    fill(second(),random(50,100),random(50,100),random(10,100));
    float a = random(10,15);
    ellipse(mouseX,mouseY,a,a);
    ellipse(400-mouseX,400-mouseY,a,a);
    ellipse(mouseX,400-mouseY,a,a);
    ellipse(400-mouseX,mouseY,a,a);
  };
};

