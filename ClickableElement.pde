class ClickableElement {
  
  PImage objectDisplayed;
  
  PImage objectHighlight;
  PImage objectBase;
  
  public int x;
  public int y;
  private int sizeX;
  private int sizeY;
  
  ClickableElement(String fileName, int x, int y, boolean high) {
    String fileNameHigh = fileName;
    if (high) {
      fileNameHigh = fileName.substring(0, fileName.indexOf('.')) + "-high.png";
    };  
    objectHighlight = loadImage(fileNameHigh);
    objectBase = loadImage(fileName);
    objectDisplayed = objectBase;

    this.sizeX = objectDisplayed.width;
    this.sizeY = objectDisplayed.height;
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
    return (mouseX >= this.x && mouseX <= this.x + this.sizeX) &&
           (mouseY >= this.y && mouseY <= this.y + this.sizeY);
  }
  
}
