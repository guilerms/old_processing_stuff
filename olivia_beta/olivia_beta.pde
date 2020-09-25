void setup() {
  smooth();
  noiseDetail(4, 0.8);
  rectMode(CENTER);
  
  
  size(400, 800);
  background(0);
  
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 40; j++) {
      //duas funcoes "for"uma para as 40 linhas de modulos,
      //outra para as 20 colunas
      
      pushMatrix();
      //guarda a posicao da matriz de transformacao para recuperar depois
      
      translate(i*20+10, j*20+10);
      //essa translacao e para colocar cada modula na sua posicao. porque a rotacao usa a origem do plano como eixo.
      
      //rotate((radians(abs((i - j))*10)));
      //rotate((radians(i%(j+1))*10));
      //rotate((radians(j%(i+1))*10));
      //rotate((radians(noise(i, j)*90)));
      //rotate(radians(2.25*j));
      //rotate((radians(sin(i-j)*90)));
      rotate(radians(int(random(10))*180));

      //vários comandos rotate, cada um é um método diferente.


      noStroke();
      fill(50+ noise(i, j)*50+4*j, 50+ noise(i, j)*50, 100 + noise(i, j)*200);
      //cores em "degradê"
      
      
      rect(0, 0, 16, 16);
      //triangle(-10, -10, 10, 10, 10, -10);
      pushMatrix();
      strokeWeight(2);
      stroke(255);
      
      //rotate(int(random(4))*HALF_PI);
      rotate((radians(noise(i, j)*90)));
      
      //comandos "rotate" para a linha
      
      line(-10, 0, 10, 0);
      popMatrix();
      popMatrix();
    }
  }
}

