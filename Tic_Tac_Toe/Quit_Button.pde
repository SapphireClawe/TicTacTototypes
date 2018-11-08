color purple = #FF03F3;
color blue = #68D0F2;
color regularButton = purple;
color hoverOverButton = blue;
String quit= "Exit";
PFont titleFont;

void quitButtonSetup() {
  titleFont = createFont ("Harrington", 55);
}

void quitButtonDraw() {
 
  if (mouseX>width*0/16 && mouseX<width*1/16 && mouseY>0 && mouseY<height*1/16) { 
    fill(hoverOverButton);
    rect(width*0/16, height*0/16, width*1/16, height*1/16);
  } else {
    fill(regularButton);
    rect(width*0/16, height*0/16, width*1/16, height*1/16);
  }


  fill(#68D0F2); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 15); 
  text(quit, width*0/16, height*0/16, width*1/16, height*1/16);
  fill(255); 
}

void quitButtonMouseClicked() {
  if (mouseX>width*0/16 && mouseX<width*1/16 && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
}
