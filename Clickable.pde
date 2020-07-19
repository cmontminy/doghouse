class Clickable {
  
  PImage objectDisplayed;
  
  PImage objectHighlight;
  PImage objectBase;
  
  private int x;
  private int y;
  private int size;
  
  Clickable(String fileName, int x, int y) {
    String fileNameHigh = fileName.substring(0, fileName.indexOf('.')) + "-high.png";
    
    objectHighlight = loadImage(fileNameHigh);
    objectBase = loadImage(fileName);
    objectDisplayed = objectBase;
    
    this.size = objectDisplayed.width;
    this.x = x;
    this.y = y;
  }
  
  void update() {
    objectDisplayed = isOver() ? objectHighlight : objectBase;
    display();
  }  
  
  void display() {
    image(objectDisplayed, x, y);
  }
  
  boolean clicked() {
    return isOver() && mousePressed;
  }
  
  boolean isOver() {
    return (mouseX >= this.x && mouseX <= this.x + this.size) &&
           (mouseY >= this.y && mouseY <= this.y + this.size);
  }
  
}
