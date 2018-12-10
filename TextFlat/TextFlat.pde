//fullScreen();
size(600, 200);
String title= "Wahoo!";
PFont titleFont;
float titleWidth = width*1/2;
float titleHeight = height*1/10;
float titleFontSize = height;
println("Start of Console");
titleFont = createFont ("Harrington", height);
String titleFontString = "Harrington";
float titleFontDecrease = 0.18; 
rect(width*1/4, height*0, titleWidth, titleHeight);
fill(#2C08FF); 
textAlign (CENTER, CENTER); 
//Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
textFont(titleFont, titleFontSize); 
float i = 1;
while (textWidth(title) > titleWidth) {
  titleFontSize = titleFontSize * i;
  textSize (titleFontSize);
  i = i - 0.0001;
  println ("i:", i, "Title Font Size:", titleFontSize); 
}
if (titleFontString == "Harrington") {
  titleFontSize = titleFontSize * titleFontDecrease;
}
println ("New Font Size", titleFontSize);
textFont(titleFont, titleFontSize); 
text(title, width*1/4, height*0, titleWidth, height*1/10);
fill(255); 
