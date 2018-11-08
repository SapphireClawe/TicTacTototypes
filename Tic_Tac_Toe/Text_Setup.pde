String easy = "Easy", medium = "Medium", master = "Master";
PFont levelFont, xoFont, playerFont, scoreFont;
float fontSize;

void textSetup() {


  levelFont = createFont ("Stencil", 90); 
  xoFont = createFont ("Palace Script MT", 90);
  playerFont = createFont ("SimSun", 90);
  scoreFont = createFont ("Stencil", 90);
}

void textDraw (color ink, float rectWidth, float rectHeight) {
  println ("Inside textDraw:", ink, rectWidth, rectHeight);
  fill(ink); //Ink, hexidecimal copied from Color Selector
  fontSize = textCalc (easy, rectWidth, rectHeight);
  println("Font Size After:", fontSize);
  textFont(levelFont, fontSize); 
  text(easy, 0, 0, width*1/3, height*1/12); 
  fill(255);
}

float textCalc (String text, float rectWidth1, float rectHeight1) {
  println ("Inside textCalc:", text, rectWidth1, rectHeight1);
  float fontSize_local = rectHeight1;
  textSize (fontSize_local); 
  println ("Before Loop:", rectHeight1);
  for(float i=1; textWidth(text) > rectWidth1; i=i-0.01) {
    fontSize_local =  fontSize_local*i;
    textSize (fontSize_local); 
    println ("Inside Loop:", fontSize_local);
  }
  return fontSize_local;
}
