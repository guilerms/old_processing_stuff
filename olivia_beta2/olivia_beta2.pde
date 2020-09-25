//modulo 1
int formaMod1 = 1;
int metodoRot1 = 1;
int metodoEscala1 = 0;
int metodoCor1 = 1;
int cor1 = 50;

//modulo 2
int formaMod2 = 0;
int metodoRot2 = 0;
int metodoEscala2 = 0;
int metodoCor2 = 0;
int cor2 = 50;

color fundo = (0);
//dinMedium = loadFont(DIN-Medium-16.vlw);

void setup() {
  smooth();
  noiseDetail(4, 0.8);
  size(640, 640);

  desenharTela();
  desenharPadrao();
}

void mouseReleased() {
  println("mouse");
  desenharTela();
  desenharPadrao();
}

void desenharTela() {
  background(125);
  rectMode(CORNER);
  fill(fundo);
  rect(220, 20, 400, 600);

  //textFont(dinMedium, 16);
  //text("FUNDO", 20,40);
}

void desenharPadrao() {

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 30; j++) {
      //duas funcoes "for"uma para as 40 linhas de modulos,
      //outra para as 20 colunas

      pushMatrix();
      //guarda a posicao da matriz de transformacao para recuperar depois

      translate(i*20+230, j*20+30);
      //essa translacao e para colocar cada modula na sua posicao. porque a rotacao usa a origem do plano como eixo.

      switch(metodoRot1) {
      case 0:
        break;
      case 1:
        rotate((radians(abs((i - j))*10)));
        break;
      case 2:
        rotate((radians(i%(j+1))*10));
        break;
      case 3:
        rotate((radians(j%(i+1))*10));
        break;
      case 4:
        rotate((radians(noise(i, j)*90)));
        break;
      case 5:
        rotate(radians(2.25*j));
        break;
      case 6:
        rotate((radians(sin(i-j)*90)));
        break;
      case 7:
        rotate(radians(int(random(10))*180));
        break;
      }

      noStroke();

      switch(metodoCor1) {
      case 0:
        break;
      case 1:
        println("cor = 1");
        fill(50+ noise(i, j)*50+4*j, 50+ noise(i, j)*50, 100 + noise(i, j)*200);
        break;
      }//cores em "degradê"


      switch(formaMod1) {
      case 0:
        rect(0, 0, 16, 16);
        break;
      case 1:
        println("forma = 1");
        triangle(-9, -9,9, 9, 9, -9);
        break;
      }


      /* pushMatrix();
       strokeWeight(2);
       stroke(255);
       
       //rotate(int(random(4))*HALF_PI);
       rotate((radians(noise(i, j)*90)));
       
       //comandos "rotate" para a linha
       
       line(-10, 0, 10, 0);
       
       
       popMatrix();*/
      popMatrix();
    }
  }
}

