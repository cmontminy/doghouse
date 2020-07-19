class TextBox {
  PImage box_border;
  PImage character;
  
  TextBox() {
  }
  
  void display() {
    noStroke();
    fill(114, 140, 140, 128);
    rect(100, 800, width - 200, 233);
  }
}
