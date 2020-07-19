class ClickableObject {
  PImage object;
  PImage highlighted_object;
  PImage displayed_object;
  int x;
  int y;
  int size;
  
  ClickableObject(String filename, String highname, int x, int y) {
    object = loadImage(filename);
    displayed_object = object;
    highlighted_object = loadImage(highname);
    this.x = x;
    this.y = y;
    this.size = object.width;
  }
  
  void update() {
    if (isOver()) {
      displayed_object = highlighted_object;
      display();
    }
  }
  
  void display() {
    image(displayed_object, x, y);
  }
  
  boolean isOver() {
    return (mouseX >= this.x && mouseX <= this.x + this.size) &&
           (mouseY >= this.y && mouseY <= this.y + this.size);
  }
}
