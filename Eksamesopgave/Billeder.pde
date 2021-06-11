class billeder {
  PImage sloth;
  PImage meerKat;
  PImage Terraen;
  PImage plante1;
  PImage plante2;
  
  void loadBilleder() {
    meerKat = loadImage("meerKat.jpg");
    meerKat.resize(90, 90);
    sloth = loadImage("sloth.png");
    sloth.resize(90, 90);
    Terraen = loadImage("Desert.jpg");
    Terraen.resize(150, 150);
    plante1 = loadImage("foxTail.jpg");
    plante1.resize(90, 90);
    plante2 = loadImage("mælkeBøtte.jpg");
    plante2.resize(90, 90);
  }
}
