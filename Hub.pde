class Hub {
  
  PImage background;
  
  private ClickableElement bakery;
  private ClickableElement frathouse;
  private ClickableElement drughouse;
  
  public boolean bakeryFlag;
  public boolean fraghouseFlag;
  public boolean drughouseFlag;
  
  public Hub() {
    background = loadImage("assets/backgrounds/evidence_packet.png");
    bakery = new ClickableElement("assets/objects/bakeryphoto.png", 1000, 100, true);
    frathouse = new ClickableElement("assets/objects/fratphoto.png", 1200, 400, true);
    drughouse = new ClickableElement("assets/objects/dealerphoto.png",  1100, 700, true);
  }
  
  public void update() {
    bakery.update();
    frathouse.update();
    drughouse.update();
  }
  
  public void display() {
    image(background, 0, 0);
    
    bakery.display();
    frathouse.display();
    drughouse.display();
  }
}
