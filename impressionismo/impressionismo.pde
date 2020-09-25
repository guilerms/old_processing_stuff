float e;
int range = 10;
void setup(){
  PImage img = loadImage("data.jpg");
  size(img.width,img.height);
  background(0);
  smooth();
  colorMode(HSB,100,100,100,100);
};
void draw(){
  PImage img = loadImage("data.jpg");
  if (keyPressed && key == CODED) {
    if (keyCode == UP) {
      image(img, 0, 0);
    }
    else if (keyCode == DOWN) {
      background(0);
    }
  }
    if(mousePressed){
    for (int i = 0; i < width; i+=10){
      for (int j = 0; j < height; j+=10){
        noFill();
        strokeWeight(random(4));
        stroke(img.get(i,j));
        e = random(20);
        //bezier(i+random(-range,range),j+random(-range,range),i+random(-range,range),j+random(-range,range),i+random(-range,range),j+random(-range,range),i+random(-range,range),j+random(-range,range));
        ellipse(i,j,e,e);
      }
    }
  }

}








