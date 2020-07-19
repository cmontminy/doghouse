class SceneElement extends Clickable {
  
  SceneElement(String fileName, int x, int y) {
    super(fileName, x, y);
  }
  
  void resize(int x, int y) {
    objectBase.resize(x, y);
    objectHighlight.resize(x, y);
  }
  
}
