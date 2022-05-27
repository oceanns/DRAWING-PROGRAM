//Global Variables
Boolean draw=false, paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter;
int reset=1;
//
PFont font;
int initialSize=55, size;
String quitButtonString= "X";
String secondTextString= "RESET";
//
color black = #000000, white = #FFFFFF, red = #EA5600, blue = #045A83, quitButtonColour;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
//
float BGX1, BGY1, BGWidth1, BGHeight1;
float BGX2, BGY2, BGWidth2, BGHeight2;
//
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float buttonX3, buttonY3, buttonWidth3, buttonHeight3;
//
void setup() {
  fullScreen();
  //
  //population
  drawSurfaceX= displayWidth*0/4;
  drawSurfaceY= displayHeight*0/5;
  drawSurfaceWidth= displayWidth*3.6/4;
  drawSurfaceHeight= displayHeight*4/5;
  diameter = displayWidth*1/100;
  quitButtonX = displayWidth*18/20;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*2/20;
  quitButtonHeight = displayHeight*1/10;
  secondTextX = quitButtonX;
  secondTextY = displayHeight*1/10;
  secondTextWidth = quitButtonWidth;
  secondTextHeight = quitButtonHeight;
  //
  BGX1 = displayWidth*0/4;
  BGY1 = displayHeight*6.43/8;
  BGWidth1 = displayWidth*2/2;
  BGHeight1 = displayHeight*2/2;
  //
  BGX2 = displayWidth*3.61/4;
  BGY2 = displayHeight*0/8;
  BGWidth2 = displayWidth*2/2;
  BGHeight2 = displayHeight*2/2;
  //
  buttonX1 = displayWidth*0.04/4;
  buttonY1 = displayHeight*6.45/8;
  buttonWidth1 = displayWidth*1/9;
  buttonHeight1 = displayHeight*1/17;
  //
  buttonX2 = displayWidth*0.04/4;
  buttonY2 = displayHeight*6.965/8;
  buttonWidth2 = displayWidth*1/9;
  buttonHeight2 = displayHeight*1/17;
  //
  buttonX3 = displayWidth*0.04/4;
  buttonY3 = displayHeight*7.49/8;
  buttonWidth3 = displayWidth*1/9;
  buttonHeight3 = displayHeight*1/17;
  //
  font = createFont ("AngsanaNew", initialSize);
  //
  //
  stroke(black);
  fill(white);
  strokeWeight(4);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
}//End setup
//
void draw() {
  //
  
  { fill(blue);
    stroke(blue);
    rect(BGX1, BGY1, BGWidth1, BGHeight1); }
  //
  { fill(blue);
    rect(BGX2, BGY2, BGWidth2, BGHeight2); }
  //
  //
  stroke(black);
  if (paper==true) { 
    fill(white);
    rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
    paper=false;
  }
  //if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) 
  // line(mouseX, mouseY, pmouseX, pmouseY);
  //
  fill(black);
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter, diameter );
    //
    //quit button
    if ( mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY + quitButtonHeight) {
      quitButtonColour = red;
    } else {
      quitButtonColour = black; 
    }
    fill(quitButtonColour);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    //
    fill(white);
    textAlign( CENTER, CENTER);
    size = 45; 
    textFont(font, size);
    text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    //
    //
    fill(white);
    rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
    fill(black);
    textAlign( CENTER, CENTER);
    size = 20; 
    textFont(font, size);
    text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
    //
    strokeWeight(2);
    { fill(white);
    rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); }
    //
    { fill(white);
    rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); }
    //
    { fill(white);
    rect(buttonX3, buttonY3, buttonWidth3, buttonHeight3); }
    //
    fill(black);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  
  if (mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) draw=false;
   
     
      
    
    if (mouseX>=buttonX1 && mouseX<=buttonX1 + buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1 + buttonHeight1)
      if (draw==true) {
      draw=false;
    } else {
      draw=true;}
    //
    if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY + quitButtonHeight) exit();
    //
    if (mouseX>=secondTextX && mouseX<=secondTextX + secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY + secondTextHeight) paper=true;
}//End mousePressed
//
//End MAIN
