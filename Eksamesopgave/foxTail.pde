class foxTail extends Plante {

  billeder b;
  foxTail(billeder b) {
    this.b=b;
  }

  void display() {
    super.display();
    imageMode(CENTER);
    image(b.plante1, x, y,sizex,sizey);
  }
}
