class Text {
  String scrollText;
  PFont font;
  int counter;
  
  Text(String text) {
    scrollText = text;  
  }
   
  void display() {
    fill(255,255,255);
    font = createFont("Arial", 48);
    textFont(font, 48);
    typewriteText();
  }
   
  void typewriteText(){
    if (counter < scrollText.length()) {
      counter++;
      if (key == ' ') {
        counter = scrollText.length();
      }
    }
    text(scrollText.substring(0, counter), 120, 820, width - 269, height);
  }
  
  
  
}
