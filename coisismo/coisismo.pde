float e;
int tamanho = 8;

import processing.pdf.*;

void setup(){
  PImage img = loadImage("data.jpg");
  size(img.width,img.height);

  beginRecord(PDF, "/capturas/pdfs/pontos"+random(3000)+".pdf"); 

  background(0);
  smooth();
  colorMode(HSB,100,100,tamanho,100);
  noStroke();

  for (int i = 0; i <= width; i+=tamanho){
    for (int j = 0; j <= height; j+=tamanho){
      fill(hue(img.get(i,j)),saturation(img.get(i,j)),100);
      e = brightness(img.get(i,j));
      ellipse(i+tamanho/2,j,e,e);
    }
  }
  save("/capturas/raster/pontos"+random(3000)+".png");

  endRecord();

};


