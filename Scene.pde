Scene scene_1;
TextBox box_1;

void setup() {
  scene_1 = new Scene("assets/backgrounds/bakery.png");
  box_1 = new TextBox("assets/npcs/Prosecutor.png");
}

void settings() {
  //fullScreen();
  size(1920, 1080);
}

void draw() {
  background(0, 0, 0);
  scene_1.display();
  box_1.display();
}
