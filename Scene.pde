class Scene {
  PImage backgroundImage;
  
  CharacterElement character;
  ClickableElement evidence;
  Text text;
  TextBox box;
  
  boolean dialogueClicked;
  boolean evidenceClicked;
  
  Scene(JSONObject json) {
    backgroundImage = loadImage(json.getString("background"));
    evidence = new ClickableElement(json.getString("evidence"), json.getInt("evidence-x"), json.getInt("evidence-y"), true);
    character = new CharacterElement(json.getString("character"), width - width / 3, 200);
    character.resize(600, 600);
    text = new Text(json.getJSONArray("dialogue"));
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
