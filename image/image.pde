void setup(){
  background(0);
  size(400,400);
  smooth();
};
void draw (){
  PImage b = loadImage("laDefense.jpg");
  if(keyPressed){
    image(b, 0, 0);
  }
  if(mousePressed){
    noStroke();
    for (int i = -100; i < 100; i+=10){
      for (int j = -100; j < 100; j+=10){
        fill(b.get(mouseX+i,mouseY+j));
        rectMode(CENTER);
        ellipse(mouseX+i,mouseY+j,10,10);
      };  
    };
  }
};


