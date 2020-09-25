/* aula 2 exercicio 2
 
 Pong com rebote angular simples.
 
 Animacao, iteradores, incrementadores, interacao com animacao.
 
 Claudio Pinhanez
 
 22 de agosto de 2008 
 */

/* bola */
int x=0; // armazena posicao horizontal da bola
int incX=3; // armazena incremento horizontal
int y=240; // armazena posicao vertical da bola
int incY=3; // armazena incremento vertical

/* raquete */
int raqueteY=240; // armazena posicao vertical da raquete
int incRaquete=0;

void setup ()
{
  size(480,480);
  background(0); 
  fill(255);
  stroke(255);
  noStroke();
  rectMode(CENTER);

}

void draw ()
{

  // verficia se e' necessario mudar a posicao da raquete
  // para detectar teclas especiais, primeiro verifica se
  // a tecla e' do tipo "CODED", entao verifica se o 
  // keyCode e' o desejado
  if (keyPressed && key == CODED) {
    if (keyCode == UP) {
      incRaquete=-4;
    } 
    else if (keyCode == DOWN) {
      incRaquete=4;
    } 
  }
  // apaga a raquete
  fill(0);
  rect(400,raqueteY,10,100);

  // desenha a raquete
  fill(255);
  raqueteY=raqueteY+incRaquete;
  rect(400,raqueteY,10,100);
  incRaquete=0;



  delay(10);
}
