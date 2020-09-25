/*
Guilherme Almeida de Souza - 22/11/2008
Design - Turma 3
 */
float bolinhaX = 200;
float bolinhaY = 200;
float velX = random (-100,100);
float velY = random (-100,100);
void setup(){
  size(400,400);
  smooth();
  background(0);
}
void draw(){
  //background(0);
  noStroke();
  fill(random(20),random(20),random(255));
  ellipse (bolinhaX, bolinhaY, 20, 20);
  if(bolinhaX > 0 && bolinhaX < 400){
    bolinhaX += velX;
  }
  else{
    velX = velX * -1;
    bolinhaX += 2 * velX;
  }
  if(bolinhaY>0 && bolinhaY<400){
    bolinhaY += velY;
  }
  else{
    velY = velY * -1;
    bolinhaY += 2 * velY;  
  }
}
