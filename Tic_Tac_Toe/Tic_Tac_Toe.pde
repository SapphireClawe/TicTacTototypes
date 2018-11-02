

void setup() {
  size (500, 501);
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console");
  
  background(255);
  
  line(width*1/3, 0, width*1/3, height);
  line(width*2/3, 0, width*2/3, height);
  
  line(0, height*1/3, width, height*1/3);
  line(0, height*2/3, width, height*2/3);
}


void draw() {}
