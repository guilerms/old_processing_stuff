float h = random (10000);
float s = 10000;
float b = 10000;

void setup(){
  
  size (1366,768);
  colorMode(HSB,10000);
}
void draw(){
  background(int(h),int(s),int(b));
  if(h<10000){
    h++;
  }else{
    h=0;
  }
  /*if(s<100){
    s = s+(random(-1,1)*0.1);
  }else{
    s=0;
  }*/
}
