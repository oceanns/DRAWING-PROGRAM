//Global Variables
color drawColour, canvasCLR=#FFFFFF;
//
Boolean draw=false, draw2=false, draw3=false, paper=false, pencil=false, strokeColour=false, strokeColour2=false, strokeColour3=false, eraser=false;
Boolean turnOnImage=false, turnOnImage2=false, turnOnImage3=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter, diameter2, diameter3;
int reset=1;
//
PImage pic1, pic2, pic3;
//
PFont font;
int initialSize=55, size;
String quitButtonString= "X";
String secondTextString= "RESET";
String brush1Text = "BRUSH 1";
String brush2Text = "BRUSH 2";
String brush3Text = "BRUSH 3";
String pencilText = "PENCIL";
String eraserText = "ERASER";
//
color black = #000000, white = #FFFFFF, red = #F03716, blue = #5159E0 , BG = #BCBDD3, quitButtonColour, green =#65DB5B, yellow = #E4EA34, purple = #881EB7 ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
//
float BGX1, BGY1, BGWidth1, BGHeight1;
float BGX2, BGY2, BGWidth2, BGHeight2;
float BGX3, BGY3, BGWidth3, BGHeight3;
//
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float buttonX3, buttonY3, buttonWidth3, buttonHeight3;
float buttonXpencil, buttonYpencil, buttonWidthpencil, buttonHeightpencil;
float colourX1, colourY1, colourWidth1, colourHeight1;
float colourX2, colourY2, colourWidth2, colourHeight2;
float colourX3, colourY3, colourWidth3, colourHeight3;
float colourX4, colourY4, colourWidth4, colourHeight4;
float colourX5, colourY5, colourWidth5, colourHeight5;
float colourX6, colourY6, colourWidth6, colourHeight6;
float eraserX, eraserY, eraserWidth, eraserHeight;
float cnvsCLRX1, cnvsCLRY1, cnvsCLRWidth1, cnvsCLRHeight1;
float cnvsCLRX2, cnvsCLRY2, cnvsCLRWidth2, cnvsCLRHeight2;
//
float imageX1, imageY1, imageWidth1, imageHeight1;
float imageX2, imageY2, imageWidth2, imageHeight2;
float imageX3, imageY3, imageWidth3, imageHeight3;
//
void setup() {
  fullScreen();
  //
  //population
  drawSurfaceX= displayWidth*0/4;
  drawSurfaceY= displayHeight*0/5;
  drawSurfaceWidth= displayWidth*3.6/4;
  drawSurfaceHeight= displayHeight*4/5;
  //
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
  BGY1 = displayHeight*6.4/8;
  BGWidth1 = displayWidth*2/2;
  BGHeight1 = displayHeight*2/2;
  //
  BGX2 = displayWidth*3.6/4;
  BGY2 = displayHeight*0/8;
  BGWidth2 = displayWidth*2/2;
  BGHeight2 = displayHeight*2/2;
  //
  BGX3 = displayWidth*3.5/4;
  BGY3 = displayHeight*6.423/8;
  BGWidth3 = displayWidth*2/2;
  BGHeight3 = displayHeight*2/2;
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
  buttonXpencil = displayWidth*1/4;
  buttonYpencil = displayHeight*6.45/8;
  buttonWidthpencil = displayWidth*1/9;
  buttonHeightpencil = displayHeight*1/11;
  font = createFont ("AngsanaNew", initialSize);
  //
  colourX1 = displayWidth*0.52/4;
  colourY1 = displayHeight*6.5/8;
  colourWidth1 = displayWidth*1/20;
  colourHeight1 = displayHeight*1/20;
  //
  colourX2 = displayWidth*0.52/4;
  colourY2 = displayHeight*7.0/8;
  colourWidth2 = displayWidth*1/20;
  colourHeight2 = displayHeight*1/20;
  //
  colourX3 = displayWidth*0.52/4;
  colourY3 = displayHeight*7.5/8;
  colourWidth3 = displayWidth*1/20;
  colourHeight3 = displayHeight*1/20;
  //
  colourX4 = displayWidth*0.74/4;
  colourY4 = displayHeight*6.5/8;
  colourWidth4 = displayWidth*1/20;
  colourHeight4 = displayHeight*1/20;
  //
  colourX5 = displayWidth*0.74/4;
  colourY5 = displayHeight*7.0/8;
  colourWidth5 = displayWidth*1/20;
  colourHeight5 = displayHeight*1/20;
  //
  colourX6 = displayWidth*0.74/4;
  colourY6 = displayHeight*7.5/8;
  colourWidth6 = displayWidth*1/20;
  colourHeight6 = displayHeight*1/20;
  //
  eraserX = displayWidth*1/4;
  eraserY = displayHeight*7.2/8;
  eraserWidth = displayWidth*1/9;//
  eraserHeight = displayHeight*1/11;
  //
  cnvsCLRX1 = displayWidth*1.5/4;
  cnvsCLRY1 = displayHeight*6.5/8;
  cnvsCLRWidth1 = displayWidth*1/20;
  cnvsCLRHeight1 = displayHeight*1/20;
  //
  cnvsCLRX2 = displayWidth*1.9/4;
  cnvsCLRY2 = displayHeight*6.5/8;
  cnvsCLRWidth2 = displayWidth*1/20;
  cnvsCLRHeight2 = displayHeight*1/20;
  //
  imageX1 = displayWidth*2.2/4;
  imageY1 = displayHeight*6.5/8;
  imageWidth1 = displayWidth*1/9;
  imageHeight1 = displayHeight*1/11;
  //
  imageX2 = displayWidth*2.7/4;
  imageY2 = displayHeight*6.5/8;
  imageWidth2 = displayWidth*1/9;
  imageHeight2 = displayHeight*1/11;
  //
  imageX3 = displayWidth*3.4/4;
  imageY3 = displayHeight*6.5/8;
  imageWidth3 = displayWidth*1/9;
  imageHeight3 = displayHeight*1/11;
  //
  stroke(black);
  fill(white);
  strokeWeight(4);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  //
  pic1 = loadImage("book.png");
  pic2 = loadImage("CLR.png");
  pic3 = loadImage("clr_book.png");
}//End setup
//
void draw() {
  //
  
  { fill(BG);
    stroke(black);
    rect(BGX1, BGY1, BGWidth1, BGHeight1); }
  //
  { fill(BG);
    rect(BGX2, BGY2, BGWidth2, BGHeight2); }
  //
  { fill(BG);
    stroke(BG);
    rect(BGX3, BGY3, BGWidth3, BGHeight3); }
  //
  //
    stroke(canvasCLR);
  if (paper==true) { 
    fill(canvasCLR);
    rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
    paper=false;
  }
  //if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) 
  // line(mouseX, mouseY, pmouseX, pmouseY);
  //
    noStroke();
    fill(drawColour);
    if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter, diameter );
    //
    //
    fill(drawColour);
    if (draw2==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter2, diameter2 );
    //
    //
    fill(drawColour);
    if (draw3==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter3, diameter3 );
    //
    //
    fill(canvasCLR);
    if (eraser==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
    ellipse( mouseX, mouseY, diameter2, diameter2 );
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
    { fill(green);
    rect(colourX4, colourY4, colourWidth4, colourHeight4); }
    //
    { fill(yellow);
    rect(colourX5, colourY5, colourWidth5, colourHeight5); }
    //
    { fill(purple);
    rect(colourX6, colourY6, colourWidth6, colourHeight6); }
    fill(black);
    //
    { fill(white);
    rect(eraserX, eraserY, eraserWidth, eraserHeight); }
    //
    //
    { fill(white);
    rect(imageX1, imageY1, imageWidth1, imageHeight1); }
    if (turnOnImage==true) image(pic1, drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight );
    //
    { fill(white);
    rect(imageX2, imageY2, imageWidth2, imageHeight2); }
    if (turnOnImage2==true) image(pic2, drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight );
    //
    { fill(white);
    rect(imageX3, imageY3, imageWidth3, imageHeight3); }
    if (turnOnImage3==true) image(pic3, drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight );
    //
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
    fill(black);
    textAlign( CENTER, CENTER);
    size = 25; 
    textFont(font, size);
    text(eraserText, eraserX, eraserY, eraserWidth, eraserHeight );
    //
    //cnavas clr
    { fill(red);
    rect(cnvsCLRX1, cnvsCLRY1, cnvsCLRWidth1, cnvsCLRHeight1); }
    //
    { fill(white);
    rect(cnvsCLRX2, cnvsCLRY2, cnvsCLRWidth2, cnvsCLRHeight2); }
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
  
   if (mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) draw=false; draw2=false; draw3=false; pencil=false; eraser=false;
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
    //colour!! = colourX1, colourY1, colourWidth1, colourHeight1 // eraserX, eraserY, eraserWidth, eraserHeight
    if (mouseX>=colourX1 && mouseX<=colourX1 + colourWidth1 && mouseY>=colourY1 && mouseY<=colourY1 + colourHeight1)
      drawColour = red;
    //
    if (mouseX>=colourX2 && mouseX<=colourX2 + colourWidth2 && mouseY>=colourY2 && mouseY<=colourY2 + colourHeight2)
      drawColour = blue;
    //
    if (mouseX>=colourX3 && mouseX<=colourX3 + colourWidth3 && mouseY>=colourY3 && mouseY<=colourY3 + colourHeight3)
      drawColour = black;
    //
    if (mouseX>=colourX4 && mouseX<=colourX4 + colourWidth4 && mouseY>=colourY4 && mouseY<=colourY4 + colourHeight4)
      drawColour = green;
    //
    if (mouseX>=colourX5 && mouseX<=colourX5 + colourWidth5 && mouseY>=colourY5 && mouseY<=colourY5 + colourHeight5)
      drawColour = yellow;
    //
    if (mouseX>=colourX6 && mouseX<=colourX6 + colourWidth6 && mouseY>=colourY6 && mouseY<=colourY6 + colourHeight6)
      drawColour = purple;
    //
    //
   if (mouseX>=eraserX && mouseX<=eraserX + eraserWidth && mouseY>=eraserY && mouseY<=eraserY + eraserHeight)
      if (eraser==true) {
      eraser=false;
    } else {
      eraser=true;}
     //
     //cnvsCLRX1, cnvsCLRY1, cnvsCLRWidth1, cnvsCLRHeight1; imageX1, imageY1, imageWidth1, imageHeight1
   if (mouseX>=cnvsCLRX1 && mouseX<=cnvsCLRX1 + cnvsCLRWidth1 && mouseY>= cnvsCLRY1 && mouseY<=cnvsCLRY1 + cnvsCLRHeight1)
      canvasCLR = red;
     //
    if (mouseX>=cnvsCLRX2 && mouseX<=cnvsCLRX2 + cnvsCLRWidth2 && mouseY>= cnvsCLRY2 && mouseY<=cnvsCLRY2 + cnvsCLRHeight2)
      canvasCLR = white;
     //
     //
     if (mouseX>= imageX1 && mouseX<=imageX1 + imageWidth1 && mouseY>= imageY1 && mouseY<=imageY1 + imageHeight1)
       turnOnImage=true;
     //
     if (mouseX>= imageX2 && mouseX<=imageX2 + imageWidth2 && mouseY>= imageY2 && mouseY<=imageY2 + imageHeight2)
       turnOnImage2=true;
     //
     if (mouseX>= imageX3 && mouseX<=imageX3 + imageWidth3 && mouseY>= imageY3 && mouseY<=imageY3 + imageHeight3)
       turnOnImage3=true;
     //
    if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY + quitButtonHeight) exit();
    //
    if (mouseX>=secondTextX && mouseX<=secondTextX + secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY + secondTextHeight) paper=true;
}//End mousePressed
//
//End MAIN
