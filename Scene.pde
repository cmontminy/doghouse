class Scene {
  PImage backgroundImage;
  
  SceneElement character;
  SceneElement evidence;
  Text text;
  TextBox box;
  
  boolean dialogueClicked;
  boolean evidenceClicked;
  
  Scene(String filename) {
    backgroundImage = loadImage(filename);
    evidence = new SceneElement("assets/objects/chocolate.png", 500, 500);
    character = new SceneElement("assets/npcs/Prosecutor.png", width - width / 3, 200);
    character.resize(600, 600);
    text = new Text("Brutus looks like your typical pitbull on the outside; he’s got a real ruff exterior. But on the inside, he’s a total softie; he would never hurt a fly. ");
    box = new TextBox();
  }
  
  void update() {
    evidence.update();
    character.update();
    if (evidence.clicked()) {
      evidenceClicked = true;
    }
    if (character.clicked()) {
      dialogueClicked = true;
    }
  }
  
  void display() {
    image(backgroundImage, 0, 0);
    character.display();
    box.display();
    
    if (!evidenceClicked) {
      evidence.display();
    }
    
    if (dialogueClicked) {
      text.display();
    }
  }
  
  boolean finished() {
    return false;
  }
}
