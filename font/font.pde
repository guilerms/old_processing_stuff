size(400,400);
background (0);
smooth();
PFont courier;
courier = loadFont("CourierNewPSMT-48.vlw");
for(float i = 40; i < 120 ; i+=0.5){
  fill(i-40);
  textFont (courier, 40);
  text ("hello world", i,i);
};
fill(255);
textFont (courier, 40);
text ("hello world", 120,120);

