int w = 200;
int h = 400;
int gridSize = 5;
void setup() {
  size(w, h);
  //smooth();
  background (255);
  stroke(0);
 // strokeWeight(2);
  drawMaze();
}

void drawMaze() {
  noFill();
  rect(gridSize,gridSize,w-2*gridSize,h-2*gridSize);
  for (int i = 2; i < int(w/gridSize)-1; i++) {
    for (int j = 2; j < int(h/gridSize)-1; j++) {
      switch (int (random (4))) {
      case 0:
        line(i*gridSize, j*gridSize, i*gridSize+gridSize, j*gridSize);
        break;
      case 1:
        line(i*gridSize, j*gridSize, i*gridSize-gridSize, j*gridSize);
        break;
      case 2:
        line(i*gridSize, j*gridSize, i*gridSize, j*gridSize-gridSize);
        break;
      case 3:
        line(i*gridSize, j*gridSize, i*gridSize, j*gridSize+gridSize);
        break;
      }
    }
  }
}

