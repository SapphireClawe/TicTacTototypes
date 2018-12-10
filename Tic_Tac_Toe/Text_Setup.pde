void autoText(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); 
  textAlign (alignHorizontal, alignVertical); 
  

  //Reference to Text Calculator
  if (string.length() >= 13) { 
    fontSize = textCalculator(height, string, rectWidth);
  } else if (font == levelFont && string.length() == 12) {
    fontSize = fontSize * 0.08; 
  } else if (font == levelFont && string.length() == 11) {
    fontSize = fontSize * 0.045; 
  } else if (font == levelFont && string.length() == 6) {
    fontSize = fontSize * 0.07; 
  } else if (string.length() == 5) { 
    fontSize = fontSize * 0.08;
  } else if (string == quit) { 
    fontSize = fontSize * 0.03; 
  } else {
    
    fontSize = fontSize * 0.08; 
  }

  textFont(font, fontSize); 
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(255); 
}


float textCalculator(float size, String string, float rectWidth) {
  float i = 1;
  textSize(size); 
  while (textWidth(string) > rectWidth) {
    size = size * i;
    textSize (size);
    i = i - 0.0001;
  }
  return size; 
}
