int quant = 0;
int maxx = 1;
void setup(){
  size(800,800);
  smooth();
  background(0);
}
void draw(){
  if (quant < maxx){
    strokeWeight(random(4));
    stroke(random(100,255));
    point (random(width),random(height));
    quant++;
  }else{
    save ("sotrfield"+random(99999)+".tif");
    background(0);
    maxx = maxx*10;
    quant = 0;
  }
}

