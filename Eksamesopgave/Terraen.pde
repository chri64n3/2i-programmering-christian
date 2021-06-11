class Terraen extends verdensObjekter {
  
  billeder b;
  Terraen(billeder b) {
    this.b=b;
    x = int(random(100, 900));
    y = int(random(100, 900));
  }
  void display() {

    imageMode(CENTER);
    image(b.Terraen, x, y);
  
  }
}
