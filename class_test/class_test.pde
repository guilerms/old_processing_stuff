class Ball {
  float R = random(255);
  float G = random(255);
  float B = random(255);
  float X = random(width);
  float Y = random(height);
  float Xv = random(5);
  float Yv = random(5);
  void iterate (){
    fill(R,G,B);
    ellipse(X,Y,10,10);
    if(X > 0 && X < width){
      X += Xv;
    }
    else{
      Xv = Xv * -1;
      X += 2 * Xv;
    }
    if(Y>0 && Y < height){
      Y += Yv;
    }
    else{
      Yv = Yv * -1;
      Y += 2 * Yv;  
    }
  };
}

void setup(){
  size(400,400);
  smooth();
  Ball ball01 = new Ball();
};
