//////////////////////////////////////////////////
//ertdfgcvb - head 5
//2010
//////////////////////////////////////////////////
//defined in header:
//var templateURL; 
//var colorA;
//var colorB;
//////////////////////////////////////////////////

var WIDTH = 1009;
var HEIGHT = 181;
var OFFSETX = 0;
var OFFSETY = 0;
var mouseX = -1000;
var mouseY = -1000;
var frameCount = 0;

var canvas;
var context;

var e;

//////////////////////////////////////////////////
//document.addEventListener("DOMContentLoaded", setup, false);
window.onload = function() {
  setup();
  var interval = setInterval(draw, 1000 / 35);
}

//////////////////////////////////////////////////
function setup() {

  canvas = document.getElementById("headerCanvas");
  canvas.width = WIDTH;
  canvas.height = HEIGHT;
  context = canvas.getContext("2d");

  //canvas offset
  var element = canvas; 
  if (element.offsetParent) {
    do {
      OFFSETX += element.offsetLeft;
      OFFSETY += element.offsetTop;
    } 
    while (element = element.offsetParent);
  }

  //font
  e = new Efont(context);
  e.setColor(colorA);
  e.setVerticalAlign(e.LEFT); //to do: static?
  e.setHorizontalAlign(e.TOP);
}

//////////////////////////////////////////////////
function draw() {  

  context.clearRect(0, 0, WIDTH, HEIGHT);

  var str = "ERTDFGCVB";
  var fontHeight = 12;
  var fontWidth = fontHeight / 2;
  var ox = 0;
  var oy = 4;
  var lineOffsetX = 5;
  var lineWidth = 16;
  var h = HEIGHT-oy;
  var ampli = (h - fontHeight) / 2;
  var offs = - Math.PI/2;
  var num = 64;

  e.setFontHeight(fontHeight);
  e.setColor(colorA);

  context.fillStyle = colorA;

  for (var i=0; i<num; i++) {

    var lx = ox + i * lineWidth; 
    var ly = oy;
    context.fillRect(lx, ly, 1, h);
    var c = str.charAt(Math.floor(i) % str.length);
    var px = lx + lineOffsetX;
    if (i % 2 == 0) {
      var py = Math.floor(oy + Math.sin(((i+30) * frameCount) * 0.00035 + offs) * ampli + ampli);
      e.setColor(colorA);
    } 
    else {
      var py = Math.floor(oy + Math.cos(((i+60) * frameCount) * 0.00035) * ampli + ampli);
      e.setColor(colorB);
    }
    e.text(c, px, py);
  }
  frameCount++;
}

