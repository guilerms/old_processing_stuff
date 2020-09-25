/*
Guilherme Almeida de Souza - 22/11/2008
 Design - Turma 3
 */
float bolinhaX = 200;
float bolinhaY = 200;
float velX = random (-10,10);
float velY = random (-10,10);
void setup(){
  size(400,400);
  smooth();
  background(0);
}
void draw(){
  strokeWeight(5);
  stroke (0,50);
  line (bolinhaX, bolinhaY, 0,0);
  line (bolinhaX, bolinhaY, 400,0);
  line (bolinhaX, bolinhaY, 0,400);
  line (bolinhaX, bolinhaY, 400,400);
  noStroke();
  //background(0);
  fill(255,200);
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

