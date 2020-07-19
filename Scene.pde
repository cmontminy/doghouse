class Scene {
  PImage backgroundImage;
  PImage characterImage;
  
  Scene(String filename) {
     backgroundImage = loadImage(filename);
  }
  
  void display() {
    image(backgroundImage, 0, 0);
  }
}
