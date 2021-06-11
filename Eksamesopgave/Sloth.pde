class Sloth extends Dyr {
  billeder b;
  
  Sloth(billeder b) {
    this.b=b;
  }
  
  void display() {
    imageMode(CENTER);
    image(b.sloth, x, y);
  }
  
  void move() {
    //movement
    x=x+speedx;
    y=y+speedy;

    //hit border
    if (y>height || y<0) {
      speedy = -speedy;
    }
    if (x>width || x<0)
      speedx = -speedx;
  }
}
