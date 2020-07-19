Scene scene_1;
Scene scene_2;
Scene scene_3;
TextBox box_1;
Text text_1;
Hub packet;

void setup() {
  JSONArray json = loadJSONArray("events.json");
  JSONObject[] jsonArr = new JSONObject[3];
  for (int i = 0; i < 3; ++i) {
    jsonArr[i] = json.getJSONObject(i);
  }
  scene_1 = new Scene(jsonArr[0]);
  scene_2 = new Scene(jsonArr[1]);
  scene_3 = new Scene(jsonArr[2]);
  packet = new Hub();
  frameRate(20);  
}

void settings() {
  //fullScreen();
  size(1920, 1080);
  
}

void draw() {
  background(0);
  //scene_3.update();
  //scene_3.display();  
  packet.update();
  packet.display();
}
