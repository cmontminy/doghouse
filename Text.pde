class Text {
  Dialogue[] diags;
  String scrollText;
  PFont font;
  int counter;
  
  Text(String text) {
    scrollText = text;  
  }
  
  Text(JSONArray json) {
    diags = new Dialogue[json.size()];
    for (int i = 0; i < diags.length; i++) {
      diags[i] = new Dialogue((JSONObject) json.get(i));
    }
  }
   
  void display() {
    fill(255,255,255);
    font = createFont("Arial", 48);
    textFont(font, 48);
    typewriteText();
  }
   
  void typewriteText(){
    if (counter < scrollText.length()) {
      counter++;
      if (key == ' ') {
        counter = scrollText.length();
      }
    }
    text(scrollText.substring(0, counter), 120, 820, width - 269, height);
  }
  
  private class Dialogue {
    String speaker;
    String[] prompt;
    boolean isInteractive;
    Object[][] interactions;
    
    Dialogue(JSONObject json) {
      speaker = json.getString("speaker");
      JSONArray json_prompt = json.getJSONArray("prompt");
      isInteractive = false;
      prompt = new String[json_prompt.size()];
      for (int i = 0; i < prompt.length; i++) {
        prompt[i] = (String) json_prompt.get(i);
      }
      if (json.getJSONArray("answers") != null) {
         isInteractive = true;
         loadInteractions(json);
      }
    }
    
    void loadInteractions(JSONObject json) {
      JSONArray answers = json.getJSONArray("answers");
      JSONArray responses = json.getJSONArray("responses");
      interactions = new Object[responses.size()][];
      for (int i = 0; i < interactions.length; i++) {
        interactions[i] = new Object[((JSONArray) responses.get(i)).size() + 1];
        interactions[i][0] = answers.get(i);
        for (int j = 0; j < interactions[i].length; j++) {
           JSONObject sing_response = (JSONObject) ((JSONArray) responses.get(i)).get(j);
           Object[] tmp = {sing_response.get("speaker"), sing_response.get("responses")};
           interactions[i][j + 1] = tmp;
        }
      }
    }   
  }
}
