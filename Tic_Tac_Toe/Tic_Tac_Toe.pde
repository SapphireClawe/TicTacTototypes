


void setup() {
  size (500, 600);
  //fullScreen();
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console");
  
  background(255);
  
  GUI_Design();
  textSetup();
  Text();
  
  quitButtonSetup();
  
}


void draw() {
  quitButtonDraw();
  
}

void mouseClicked () {
  quitButtonMouseClicked();
}
