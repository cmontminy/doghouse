class CharacterElement extends ClickableElement {
  
  PImage bubble;
  
  CharacterElement(String fileName, int x, int y) {
    super(fileName, x, y, false);
    bubble = loadImage("assets/npcs/speechbubble.png");
  }
  
  void resize(int x, int y) {
    objectBase.resize(x, y);
    objectHighlight.resize(x, y);
  }
  
  void display() {
    super.display();
    if (isOver()) {
      image(bubble, x - 200, y);
    }
  }
  
}
