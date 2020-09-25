int divis = 20;
float [] values = new float [divis];

void setup(){
  size(210,110);
  noStroke();
}
void draw(){
  background(0);
  fill(80);
  rect (5,5,5,100);
  rect (12,5,5,100);
  if(mousePressed && mouseX>5 && mouseX<10 && 0<=mouseY-5 && mouseY-5<=100){
    ab = mouseY-5;
  }
  if(mousePressed && mouseX>12 && mouseX<17 && 0<=mouseY-5 && mouseY-5<=100){
    cd = mouseY-5;
  }
  fill(255);
  rect (12,5,5,cd);
  rect (5,5,5,ab);
}




