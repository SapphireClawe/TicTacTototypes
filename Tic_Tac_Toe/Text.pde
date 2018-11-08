void Text() {
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]

  color purple = #B703FF;
  textAlign (RIGHT, CENTER);
  println ("Before textDraw:", purple, width*1/3, height*1/12);
  textDraw(purple, width*1/3, height*1/12);
  text(easy, 0, 0, width*1/3, height*1/12); 
  fill(255); 

  fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(levelFont, 42); //Change the number until it fits, largest font size
  text(medium, 0, height*1/12, width*1/3, height*1/12);
  fill(255); //Reset to white for rest of the program
  fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(levelFont, 42); //Change the number until it fits, largest font size
  text(master, 0, height*2/12, width*1/3, height*1/12);
  fill(255); //Reset to white for rest of the program
    fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(levelFont, 42); //Change the number until it fits, largest font size
  text(easy, 0, height*0, width*1/3, height*1/12);
  fill(255); //Reset to white for rest of the program
}
