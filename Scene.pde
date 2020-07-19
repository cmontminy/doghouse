class Scene {
  PImage backgroundImage;
  
  SceneElement character;
  SceneElement evidence;
  Text text;
  TextBox box;
  
  boolean dialogueClicked;
  boolean evidenceClicked;
  
  Scene(JSONObject json) {
    backgroundImage = loadImage(json.getString("background"));
    evidence = new SceneElement(json.getString("evidence"), json.getInt("evidence-x"), json.getInt("evidence-y"));
    character = new SceneElement(json.getString("character"), width - width / 3, 200);
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
