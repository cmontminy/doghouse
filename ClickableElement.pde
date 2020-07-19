class ClickableElement {
  
  PImage objectDisplayed;
  
  PImage objectHighlight;
  PImage objectBase;
  
  public int x;
  public int y;
  private int size;
  
  ClickableElement(String fileName, int x, int y, boolean high) {
    println(fileName);
    String fileNameHigh = fileName;
    if (high) {
      fileNameHigh = fileName.substring(0, fileName.indexOf('.')) + "-high.png";
    };  
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
