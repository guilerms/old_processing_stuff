/*
Versão do jogo Pong no processing
 Guilherme Souza, 19/11/08
 */

float posYraqA = 150;
float posYraqB = 150;
float posXbolinha = 250;
float posYbolinha = 150;
int velRaq = 10;
int velXbolinha = 5;
int velYbolinha = 5;
int scoreA = 0;
int scoreB = 0;
//PFont tahoma48 = loadFont("Tahoma-48.vlw");

void setup (){
  background(0);
  size(500,300);
  smooth();
  rectMode(CENTER);
};

void atualizarTela (){
  background(0);
  fill(200);
  stroke (200);
  line (250,20,250,280);
  rect (posXbolinha, posYbolinha, 10,10);
  rect (20,posYraqA,10,80);
  rect (480,posYraqB,10,80);
};

void iterar (){
  if (posXbolinha < 500 && posXbolinha > 0){
    posXbolinha += velXbolinha;
  }
  else{
    velXbolinha = velXbolinha * -1;
    posXbolinha += velXbolinha * 2;
  };
  if (posYbolinha < 300 && posYbolinha > 0){
    posYbolinha += posYbolinha;
  }
  else{
    velYbolinha = velYbolinha * -1;
    // posYbolinha += velYbolinha * 2;
  };
  if (key == CODED){
    if(keyCode == UP){
      if (posYraqB > 0){
        posYraqB -= velRaq;
      };
    }
    else if(keyCode == DOWN){
      if (posYraqB < 300){
        posYraqB += velRaq;
      };
    };
  };
  if (key == CODED){
    if(keyCode == SHIFT){
      if (posYraqA > 0){
        posYraqA -= velRaq;
      };
    }
    else if(keyCode == CONTROL){
      if (posYraqA < 300){
        posYraqA += velRaq;
      };
    };
  };
};

void draw(){
  atualizarTela();
  iterar();
  delay(20);
};
