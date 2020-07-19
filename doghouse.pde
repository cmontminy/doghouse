Scene scene_1;
TextBox box_1;
Text text_1;
SceneElement object_1;

void setup() {
  scene_1 = new Scene("assets/backgrounds/bakery.png");
  
  
  frameRate(20);  
}

void settings() {
  fullScreen();
  //size(1920, 1080);
  
}

void draw() {
  background(0);
  scene_1.update();
  scene_1.display();  
}
