//Global Variables
Boolean draw=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight;
//
void setup() {
  fullScreen();
  //
  //population
  drawSurfaceX= displayWidth*0/4;
  drawSurfaceY= displayHeight*0/5;
  drawSurfaceWidth= displayWidth*3/4;
  drawSurfaceHeight= displayHeight*4/5;
  //
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);

}//End setup
//
void draw() {
  if (draw==true ) line(mouseX, mouseY, pmouseX, pmouseY);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  if (mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight);
  //
  if (draw==true) {
    draw=false;
  } else {
    draw=true;
  }
}//End mousePressed
//
//End MAIN
