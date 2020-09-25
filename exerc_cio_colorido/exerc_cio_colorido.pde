boolean botao = true;

void setup(){
  size (340,280);
  smooth();
  background(0);
  noStroke();
  fill(255,0,0);
  rect(90,240, 20,20);
  fill(0,0,255);
  rect(230,240,20,20);
};

void draw(){
  if(mousePressed){
    if(mouseX<110 && 90<mouseX && mouseY<260 && 240<mouseY){
      botao = true;
    }
    else if(mouseX<250 && 230<mouseX && mouseY<260 && 240<mouseY){
      botao = false;
    };
  };
  if (mousePressed && mouseY < 200){
    if(botao){
      fill(255,0,0);
    }
    else{
      fill(0,0,255);
    };
    ellipse(mouseX,mouseY,random(10,50),random(10,50));
    delay(100);
  };
  if(botao){
    fill (100,0,0);
    rect (90,240,20,2);
    rect (108,240,2,20);
    fill (255,100,100);
    rect (90,240,2,20);
    rect (90,260,20,2);
    fill (100,100,255);
    rect (230,240,20,2);
    rect (248,240,2,20);
    fill (0,0,100);
    rect (230,240,2,20);
    rect (230,260,20,2);
  }
  else{
    fill (255,100,100);
    rect (90,240,20,2);
    rect (108,240,2,20);
    fill (100,0,0);
    rect (90,240,2,20);
    rect (90,260,20,2);
    fill (0,0,100);
    rect (230,240,20,2);
    rect (248,240,2,20);
    fill (100,100,255);
    rect (230,240,2,20);
    rect (230,260,20,2);
  };
};
