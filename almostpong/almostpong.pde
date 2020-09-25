float velY = 2;
float velX = 2;
float posY = 1;
float posX = 50;
float raqY = 100;
void setup(){
  size (200,200);
  smooth();
  background(0);
};
void draw(){
  raqY = mouseY;
  if (posY < raqY + 40 && posY > raqY - 40 && posX <105 && posX > 95){
    //velY = velY * -1;
    //posY += 2* velY;
    velX = velX * -1;
    posX += 2* velX;
  };
  if (posY > 0 && posY < 200){
    posY+=velY;
  }
  else{
    velY = velY * -1;
    posY += 2* velY;
  };
  if (posX > 0 && posX < 200){
    posX+=velX;
  }
  else{
    velX = velX * -1;
    posX += 2* velX;
  };
  background (0);
  rectMode(CENTER);
  rect (100,raqY,10,80);
  fill(255);
  rect(posX,posY,10,10);
  delay(1);
};
