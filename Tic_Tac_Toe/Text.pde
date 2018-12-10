PFont levelFont, xoFont, playerFont, scoreFont;
String easy = "Easy", medium = "Medium", master = "Master", reset = "Reset", title = "Tik Tac Toe", x = "X", o = "O";
int xWin = 0, oWin = 0, count = 0, position = 0;
Boolean[] noDraw = new Boolean[9]; 
color green = #00FF1F;
int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];

void textSetup() {
 
  levelFont = createFont ("Stencil", 90); 
  xoFont = createFont ("Palace Script MT", 90);
  playerFont = createFont ("SimSun", 90);
  scoreFont = createFont ("Stencil", 90);

  
  autoText(title, levelFont, height, purple, CENTER, CENTER, width*1/3, height*0/12, width*1/3, height*1/12);

 
  autoText(easy, levelFont, height, 0, RIGHT, CENTER, 0, 0, width*0.93/3, height*1/12);
  autoText(medium, levelFont, height, 0, RIGHT, CENTER, 0, height*1/12, width*1/3, height*1/12);
  autoText(master, levelFont, height, 0, RIGHT, CENTER, 0, height*2/12, width*1/3, height*1/12);

  
  autoText(reset, levelFont, height, 0, CENTER, CENTER, width*2/3, height*0/12, width*1/3, height*1/12);

  
  autoText(x, playerFont, height, 0, LEFT, CENTER, width*9/24, height*3/24, width*4/48, height*2/24);
  autoText(o, playerFont, height, 0, LEFT, CENTER, width*17/24, height*3/24, width*4/48, height*2/24);

}

void textDraw() {

 
  autoText(str(xWin), scoreFont, height, 0, LEFT, CENTER, width*11/24, height*3/24, width*8/48, height*2/24);
  autoText(str(oWin), scoreFont, height, 0, LEFT, CENTER, width*19/24, height*3/24, width*8/48, height*2/24);


  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    xoText(x, position);
  } else {
    xoText(o, position);
  }


  if (count == 9) {
    
    fill(green);
    rect(width*2/3, height*0/12, width*1/3, height*1/12);
    fill(255);
    autoText(reset, levelFont, height, 0, CENTER, CENTER, width*2/3, height*0/12, width*1/3, height*1/12);
  }
}

void xoText(String text, int position) {
  fill(0); 
  textAlign (CENTER, CENTER);
  textFont(xoFont, 80); 
  if (position == 1) {
    text(text, width*1/24, height*7/24, width*6/24, height*4/24);
    boardPiece[0] = text;
  }
  if (position == 2) {
    text(text, width*9/24, height*7/24, width*6/24, height*4/24);
    boardPiece[1] = text;
  }
  if (position == 3) {
    text(text, width*17/24, height*7/24, width*6/24, height*4/24);
    boardPiece[2] = text;
  }
  if (position == 4) {
    text(text, width*1/24, height*13/24, width*6/24, height*4/24);
    boardPiece[3] = text;
  }
  if (position == 5) {
    text(text, width*9/24, height*13/24, width*6/24, height*4/24);
    boardPiece[4] = text;
  }
  if (position == 6) {
    text(text, width*17/24, height*13/24, width*6/24, height*4/24);
    boardPiece[5] = text;
  }
  if (position == 7) {
    text(text, width*1/24, height*19/24, width*6/24, height*4/24);
    boardPiece[6] = text;
  }
  if (position == 8) {
    text(text, width*9/24, height*19/24, width*6/24, height*4/24);
    boardPiece[7] = text;
  }
  if (position == 9) {
    text(text, width*17/24, height*19/24, width*6/24, height*4/24);
    boardPiece[8] = text;
  }
  fill(255); 
}

void xoButtonDrawMouseClicked() {
 
  if (noDraw[0] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*7/24 && mouseY<height*11/24) { 
    position = 1;
    noDraw[0] = true;
    count++;
  }
  if (noDraw[1] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*7/24 && mouseY<height*11/24) { 
    position = 2;
    noDraw[1] = true;
    count++;
  } 
  if (noDraw[2] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*7/24 && mouseY<height*11/24) { 
    position = 3;
    noDraw[2] = true;
    count++;
  } 
  if (noDraw[3] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*13/24 && mouseY<height*17/24) { 
    position = 4;
    noDraw[3] = true;
    count++;
  } 
  if (noDraw[4] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*13/24 && mouseY<height*17/24) { 
    position = 5;
    noDraw[4] = true;
    count++;
  } 
  if (noDraw[5] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*13/24 && mouseY<height*17/24) { 
    position = 6;
    noDraw[5] = true;
    count++;
  } 
  if (noDraw[6] == false && mouseX>width*1/24 && mouseX<width*7/24 && mouseY>height*19/24 && mouseY<height*23/24) { 
    position = 7;
    noDraw[6] = true;
    count++;
  } 
  if (noDraw[7] == false && mouseX>width*9/24 && mouseX<width*15/24 && mouseY>height*19/24 && mouseY<height*23/24) { 
    position = 8;
    noDraw[7] = true;
    count++;
  } 
  if (noDraw[8] == false && mouseX>width*17/24 && mouseX<width*23/24 && mouseY>height*19/24 && mouseY<height*23/24) { 
    position = 9;
    noDraw[8] = true;
    count++;
  }
}
