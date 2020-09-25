void setup(){
  size(610,510);
  background(0);
  smooth();
};
void draw(){
  for (int i = 0; i < 11; i++){
    noStroke();
    fill(100);
    rect(50+i,50+i,50,400);
    rect(50+i,50+i,500,50);
    rect(500+i,50+i,50,400);
    rect(50+i,400+i,500,50);
    if(i==10){
      fill(255);
      rect (50,50,50,400);
      rect (50,50,500,50);
      rect (500,50,50,400);
      rect (50,400,500,50);
    };

  };
};
