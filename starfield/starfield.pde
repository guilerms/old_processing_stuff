size (400,400);
background (0);
for (float i = 200; i < 400; i+=random(-30,30)){
  strokeWeight(random(4));
  stroke(random(20,255));
  point ( random (400) , i);
}
save("starfield"+random(30000)+".tif");
