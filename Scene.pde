class Scene {
  PImage background_img;
  
  Scene(String filename) {
     background_img = loadImage(filename);
  }
  
  void display() {
    image(background_img, 0, 0);
  }
}
