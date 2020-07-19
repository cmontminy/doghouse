Scene scene_1;
TextBox box_1;
Text text_1;
ClickableObject object_1;

void setup() {
  scene_1 = new Scene("assets/backgrounds/bakery.png");
  box_1 = new TextBox("assets/npcs/Prosecutor.png");
  text_1 = new Text("Brutus looks like your typical pitbull on the outside; he’s got a real ruff exterior. But on the inside, he’s a total softie; he would never hurt a fly. ");
  object_1 = new ClickableObject("assets/objects/chocolate.png", "assets/objects/chocolate-high.png", 500, 500);
  frameRate(20);
  
}

void settings() {
  //fullScreen();
  size(1920, 1080);
  
}

void draw() {
  background(0);
  scene_1.display();
  box_1.display();
  text_1.display();
  object_1.update();
  object_1.display();
}
