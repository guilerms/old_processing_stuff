import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class font extends PApplet {
  public void setup() {size(400,400);
background (0);
smooth();
PFont courier;
courier = loadFont("CourierNewPSMT-48.vlw");
for(float i = 40; i < 120 ; i+=0.5f){
  fill(i-40);
  textFont (courier, 40);
  text ("hello world", i,i);
};
fill(255);
textFont (courier, 40);
text ("hello world", 120,120);


  noLoop();
} 
  static public void main(String args[]) {
    PApplet.main(new String[] { "font" });
  }
}
