void setup (){
  size(60,20);
};
void draw (){
  for(int i = 1 ; i < width ; i++)
  {
    if(random(100)>50){
      stroke(255);
      line(i,0,i,height);
    }
    else{
      stroke(0);
      line(i,0,i,height);
    }

  };
  stroke(0);
  line(2,0,2,height);
  line(4,0,4,height);
  line(width-2,0,width-2,height);
  line(width-4,0,width-4,height);
  stroke(255);
  line(1,0,1,height);
  line(3,0,3,height);
  line(width-1,0,width-1,height);
  line(width-3,0,width-3,height);
  save("barcode"+random(30000)+".tif");
  delay(200);
};

