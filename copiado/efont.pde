//////////////////////////////////////////////////
//ertdfgcvb - Efont
//2010
//////////////////////////////////////////////////

function Efont(context) {

  this.context = context;

  if (typeof(_Efont_prototype_called_) == 'undefined') {
    _Efont_prototype_called_ = true;
    Efont.prototype.text = text;
    Efont.prototype.getChar = getChar;
    Efont.prototype.setHorizontalAlign = setHorizontalAlign;
    Efont.prototype.setVerticalAlign = setVerticalAlign;
    Efont.prototype.setFontHeight = setFontHeight;
    Efont.prototype.setColor = setColor;
    Efont.prototype.drawBreLine = drawBreLine;
    Efont.prototype.setDrawMode = setDrawMode;
  }

  this.LEFT     = 0;
  this.CENTER   = 1;
  this.RIGHT    = 2;
  this.TOP      = 0;
  this.BASELINE = 2;

  this.DEFAULT_DRAW_MODE = 0;
  this.CUSTOM_DRAW_MODE  = 1;

  this.hAlign = this.LEFT;
  this.vAlign = this.BASELINE;
  this.drawMode == this.CUSTOM_DRAW_MODE;
  this.xOffset = 0.0; //pixel precision: set to 0.5 for DEFAULT_DRAWMODE
  this.yOffset = 0.0; //pixel precision: set to 0.5
  this.col = 'rgb(0,0,0)'; 
  this.scale = 12.0;
  this.x = 0.0;
  this.y = 0.0;
  this.grid = generateGrid(1.0);
  this.chars = generateChars(this.grid);

  ///////////////////////////////////////////////////////
  function text(string, tx, ty) {

    if (tx !== undefined) this.x = tx;
    if (ty !== undefined) this.y = ty;

    //offset
    var ox = this.xOffset;
    var oy = this.yOffset;
    var charWidth = this.scale/2;
    var wordSpace = this.scale/4;
    var wordWidth = string.length * charWidth + (string.length-1) * wordSpace;
    var wordHeight = this.scale;
    if (this.hAlign == this.CENTER) ox -= wordWidth/2;
    else if (this.hAlign == this.RIGHT) ox -= wordWidth;
    if (this.vAlign == this.CENTER) oy -= wordHeight/2;
    else if (this.vAlign == this.BASELINE) oy -= wordHeight;

    this.context.save();
    this.context.lineWidth = 1.0;
    //this.context.strokeCap = "round"; //?
    this.context.strokeStyle = this.col;
    this.context.fillStyle = this.col; //for custom draw mode using rects

    this.context.translate(this.x, this.y);

    for (var j=0; j<string.length; j++) {
      var char = this.getChar(string[j]);
      if (char != null) {
        //this.context.beginPath();
        for (var i=0; i<char.segments.length; i++) {
          var ax = char.segments[i].a.x * this.scale + ox;
          var ay = char.segments[i].a.y * this.scale + oy;
          var bx = char.segments[i].b.x * this.scale + ox;
          var by = char.segments[i].b.y * this.scale + oy;
          if (this.drawMode == this.DEFAULT_DRAW_MODE) {
            this.context.beginPath();
            this.context.moveTo(ax, ay);
            this.context.lineTo(bx, by);
            this.context.stroke();
          } 
          else {
            this.drawBreLine(ax, ay, bx, by);
          }
        }
        //this.context.stroke();
        ox += charWidth + wordSpace;
      }
    }
    this.context.restore();
  }
  ///////////////////////////////////////////////////////
  function setHorizontalAlign(hAlign) {
    this.hAlign = hAlign;
  }

  ///////////////////////////////////////////////////////
  function setDrawMode(drawMode) {
    this.drawMode = drawMode;
  }

  ///////////////////////////////////////////////////////
  function setVerticalAlign(vAlign) {
    this.vAlign = vAlign;
  }

  ///////////////////////////////////////////////////////
  function setFontHeight(scale) {
    this.scale = scale;
  }
  ///////////////////////////////////////////////////////
  function setColor(col) {
    this.col = col;
  }

  ///////////////////////////////////////////////////////
  function getChar(c) {
    for (var i=0; i<this.chars.length; i++) {
      if (this.chars[i].id == c) return this.chars[i];
    }
    return null;
  }
  ///////////////////////////////////////////////////////
  function generateGrid(s) {
    //	 0- 1 -2
    //	 |  |  |
    //	 3- 4 -5
    //	 |  |  |
    //	 6- 7 -8
    //	 |  |  |
    //	 9-10-11
    //	 |  |  |
    //	12-13-14

    var vertexList = [];
    for (var i=0; i<15; i++) {
      var x = (i % 3) * 0.25 * s;
      var y = Math.floor(i / 3) * 0.25 * s;
      vertexList.push(new Vertex(x, y));
    }
    return vertexList;
  }

  ///////////////////////////////////////////////////////
  function generateChars(grid) {
    var chars = [];
    var c;

    c = new Char("E");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[2]));
    c.segments.push(new Segment(grid[6], grid[8]));
    c.segments.push(new Segment(grid[12], grid[14]));
    c.segments.push(new Segment(grid[0], grid[12]));

    c = new Char("R");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[2]));
    c.segments.push(new Segment(grid[2], grid[8]));
    c.segments.push(new Segment(grid[8], grid[6]));
    c.segments.push(new Segment(grid[6], grid[14]));
    c.segments.push(new Segment(grid[0], grid[12]));

    c = new Char("T");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[2]));
    c.segments.push(new Segment(grid[1], grid[13]));

    c = new Char("D");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[1]));
    c.segments.push(new Segment(grid[1], grid[5]));
    c.segments.push(new Segment(grid[5], grid[11]));
    c.segments.push(new Segment(grid[11], grid[13]));
    c.segments.push(new Segment(grid[13], grid[12]));
    c.segments.push(new Segment(grid[12], grid[0]));

    c = new Char("F");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[2]));
    c.segments.push(new Segment(grid[0], grid[12]));
    c.segments.push(new Segment(grid[6], grid[8]));

    c = new Char("G");
    chars.push(c);
    c.segments.push(new Segment(grid[2], grid[1]));
    c.segments.push(new Segment(grid[1], grid[3]));
    c.segments.push(new Segment(grid[3], grid[9]));		
    c.segments.push(new Segment(grid[9], grid[13]));
    c.segments.push(new Segment(grid[13], grid[14]));
    c.segments.push(new Segment(grid[14], grid[8]));
    c.segments.push(new Segment(grid[8], grid[7]));

    c = new Char("C");
    chars.push(c);
    c.segments.push(new Segment(grid[2], grid[1]));
    c.segments.push(new Segment(grid[1], grid[3]));
    c.segments.push(new Segment(grid[3], grid[9]));		
    c.segments.push(new Segment(grid[9], grid[13]));
    c.segments.push(new Segment(grid[13], grid[14]));

    c = new Char("V");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[9]));
    c.segments.push(new Segment(grid[9], grid[13]));
    c.segments.push(new Segment(grid[13], grid[11]));		
    c.segments.push(new Segment(grid[11], grid[2]));

    c = new Char("B");
    chars.push(c);
    c.segments.push(new Segment(grid[0], grid[1]));
    c.segments.push(new Segment(grid[1], grid[5]));
    c.segments.push(new Segment(grid[5], grid[7]));		
    c.segments.push(new Segment(grid[7], grid[6]));
    c.segments.push(new Segment(grid[7], grid[11]));
    c.segments.push(new Segment(grid[11], grid[13]));
    c.segments.push(new Segment(grid[13], grid[12]));		
    c.segments.push(new Segment(grid[12], grid[0]));

    return chars;
  }

  ///////////////////////////////////////////////////////
  function Char(id) {
    this.id = id;
    this.segments = [];
  }

  ///////////////////////////////////////////////////////
  function Vertex(x, y) {
    this.x = x;
    this.y = y;
  }

  ///////////////////////////////////////////////////////
  function Segment(a, b) {
    this.a = a;
    this.b = b;
  }

  //////////////////////////////////////////////////
  //Bresenham's algorithm 
  //found somewhere on the webâ€¦
  //////////////////////////////////////////////////
  function drawBreLine(x1, y1, x2, y2) {
    var sizex, sizey, incx, incy;
    var countx, county, x, y;
    sizex=x2-x1;
    sizey=y2-y1;

    if (sizex<0) {
      sizex=-sizex;
      incx=-1;
    } 
    else {
      incx=1;
    }

    if (sizey<0) {
      sizey=-sizey;
      incy=-1;
    } 
    else {
      incy = 1;
    }
    countx=x1;
    county=y1;

    this.context.fillRect(x1, y1, 1, 1);
    if (sizex>=sizey) {
      y=sizex>>1;
      for (var i=0;i<sizex;i++) {
        y+=sizey;
        if (y>=sizex) {
          y-=sizex;
          county+=incy;
        }
        countx+=incx;
        this.context.fillRect(countx, county, 1, 1);
      }
    } 
    else {
      x=sizey>>1;
      for (var i=0;i<sizey;i++) {
        x+=sizex;
        if (x>=sizey) {
          x-=sizey;
          countx+=incx;
        }
        county+=incy;
        this.context.fillRect(countx, county, 1, 1);
      }
    }
  }
}

