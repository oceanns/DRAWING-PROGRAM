//Global Variables
Boolean draw=false, draw2=false, draw3=false, paper=false, pencil=false, strokeColour=false, strokeColour2=false, strokeColour3=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter, diameter2, diameter3;
int reset=1;
//
PFont font;
int initialSize=55, size;
String quitButtonString= "X";
String secondTextString= "RESET";
String brush1Text = "BRUSH 1";
String brush2Text = "BRUSH 2";
String brush3Text = "BRUSH 3";
String pencilText = "PENCIL";
//
color black = #000000, white = #FFFFFF, red = #F03716, blue =#504EE3 , blueBG = #6B55FF, quitButtonColour;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
//
float BGX1, BGY1, BGWidth1, BGHeight1;
float BGX2, BGY2, BGWidth2, BGHeight2;
//
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float buttonX3, buttonY3, buttonWidth3, buttonHeight3;
float buttonXpencil, buttonYpencil, buttonWidthpencil, buttonHeightpencil;
float colourX1, colourY1, colourWidth1, colourHeight1;
float colourX2, colourY2, colourWidth2, colourHeight2;
float colourX3, colourY3, colourWidth3, colourHeight3;
//
void setup() {
  fullScreen();
  //
  //population
  drawSurfaceX= displayWidth*0/4;
  drawSurfaceY= displayHeight*0/5;
  drawSurfaceWidth= displayWidth*3.6/4;
  drawSurfaceHeight= displayHeight*4/5;
  diameter = displayWidth*1/120;
  diameter2 = displayWidth*1/50;
  diameter3= displayWidth*1/30;
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
  buttonXpencil = displayWidth*0.80/4;
  buttonYpencil = displayHeight*6.45/8;
  buttonWidthpencil = displayWidth*1/9;
  buttonHeightpencil = displayHeight*1/11;
  font = createFont ("AngsanaNew", initialSize);
  //
  colourX1 = displayWidth*0.5/4;
  colourY1 = displayHeight*6.45/8;
  colourWidth1 = displayWidth*1/20;
  colourHeight1 = displayHeight*1/20;
  //
  colourX2 = displayWidth*0.5/4;
  colourY2 = displayHeight*6.95/8;
  colourWidth2 = displayWidth*1/20;
  colourHeight2 = displayHeight*1/20;
  //
  colourX3 = displayWidth*0.5/4;
  colourY3 = displayHeight*7.45/8;
  colourWidth3 = displayWidth*1/20;
  colourHeight3 = displayHeight*1/20;
  stroke(black);
  fill(white);
  strokeWeight(4);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
}//End setup
//
void draw() {
  //
  
  { fill(blueBG);
    stroke(blueBG);
    rect(BGX1, BGY1, BGWidth1, BGHeight1); }
  //
  { fill(blueBG);
    rect(BGX2, BGY2, BGWidth2, BGHeight2); }
  //
  //
  
  if (paper==true) { 
    fill(white);
    rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
    paper=false;
  }
  //if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) 
  // line(mouseX, mouseY, pmouseX, pmouseY);
  //
    noStroke();
    if (strokeColour==true) fill(red); else fill(black);
    if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter, diameter );
    //
    //
    if (strokeColour==true) fill(red); else fill(black);
    if (draw2==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter2, diameter2 );
    //
    //
    if (strokeColour==true) fill(red); else fill(black); 
    if (draw3==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter3, diameter3 );
    //
    //
    //quit button
    if ( mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY + quitButtonHeight) {
      quitButtonColour = red;
    } else {
      quitButtonColour = black; 
    }
    stroke(black);
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
    //
    //
    //
    stroke(black);
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
    //
    //pencil button
    strokeWeight(2);
    { fill(white);
    rect(buttonXpencil, buttonYpencil, buttonWidthpencil, buttonHeightpencil); }
    //
    //
    { fill(red);
    rect(colourX1, colourY1, colourWidth1, colourHeight1); }
    //
    { fill(blue);
    rect(colourX2, colourY2, colourWidth2, colourHeight2); }
    //
    { fill(black);
    rect(colourX3, colourY3, colourWidth3, colourHeight3); }
    //
    fill(black);
    //
    //button text
    fill(black);
    textAlign( CENTER, CENTER);
    size = 25; 
    textFont(font, size);
    text(brush1Text, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
    //
    fill(black);
    textAlign( CENTER, CENTER);
    size = 25; 
    textFont(font, size);
    text(brush2Text, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
    //
    fill(black);
    textAlign( CENTER, CENTER);
    size = 25; 
    textFont(font, size);
    text(brush3Text, buttonX3, buttonY3, buttonWidth3, buttonHeight3);
    //
    fill(black);
    textAlign( CENTER, CENTER);
    size = 25; 
    textFont(font, size);
    text(pencilText, buttonXpencil, buttonYpencil, buttonWidthpencil, buttonHeightpencil);
    //
    //pencil
    stroke(black);
    if (pencil == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  
   if (mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) draw=false; draw2=false; draw3=false; pencil=false;
   //
   //1st brush
    if (mouseX>=buttonX1 && mouseX<=buttonX1 + buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1 + buttonHeight1)
      if (draw==true) {
      draw=false;
    } else {
      draw=true;}
    //
    //2nd brush
    if (mouseX>=buttonX2 && mouseX<=buttonX2 + buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2 + buttonHeight2)
      if (draw2==true) {
      draw2=false;
    } else {
      draw2=true;}
    //
    //3rd brush
    if (mouseX>=buttonX3 && mouseX<=buttonX3 + buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3 + buttonHeight3)
      if (draw3==true) {
      draw3=false;
    } else {
      draw3=true;}
    // 
    //pencil button lololol
    if (mouseX>=buttonXpencil && mouseX<=buttonXpencil + buttonWidthpencil && mouseY>=buttonYpencil && mouseY<=buttonYpencil + buttonHeightpencil)
      if (pencil==true) {
      pencil=false;
    } else {
      pencil=true;}
    //
    //colou.'.'.'.. colourX1, colourY1, colourWidth1, colourHeight1
    if (mouseX>=colourX1 && mouseX<=colourX1 + colourWidth1 && mouseY>=colourY1 && mouseY<=colourY1 + colourHeight1)
      if (strokeColour==true) {
      strokeColour2=false;
      strokeColour3=false;
    } else {
      strokeColour=true;}
    //
    if (mouseX>=colourX2 && mouseX<=colourX2 + colourWidth2 && mouseY>=colourY2 && mouseY<=colourY1 + colourHeight2)
      if (strokeColour2==true) {
      strokeColour=false;
      strokeColour3=false;
    } else {
      strokeColour2=true;}
    //
    if (mouseX>=colourX3 && mouseX<=colourX3 + colourWidth3 && mouseY>=colourY3 && mouseY<=colourY3 + colourHeight3)
      if (strokeColour3==true) {
      strokeColour=false;
      strokeColour2=false;
    } else {
      strokeColour3=true;}
      
      
    //
    if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY + quitButtonHeight) exit();
    //
    if (mouseX>=secondTextX && mouseX<=secondTextX + secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY + secondTextHeight) paper=true;
}//End mousePressed
//
//End MAIN
