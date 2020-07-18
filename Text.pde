class Text {
  String scroll_text;
  PFont font;
  int counter;
  
  Text(String text) {
    scroll_text = text;  
  }
   
  void draw() {
    fill(255,255,255);
    font = createFont("Arial", 48);
    textFont(font, 48);
    typewriteText();
  }
   
  void typewriteText(){
    if (counter < scroll_text.length())
      counter++;
    text(scroll_text.substring(0, counter), 120, 820, width - 200, height);
  }
}
