class TextBox {
  PImage box_border;
  PImage character;
  
  TextBox(String filename) {
     character = loadImage(filename);
     character.resize(600, 600);
  }
  
  void display() {
    image(character, width - width / 3, 200);
    noStroke();
    fill(114, 140, 140, 128);
    rect(100, 800, width - 200, 200);
  }
}
