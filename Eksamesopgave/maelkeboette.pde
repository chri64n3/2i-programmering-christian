class maelkeboette extends Plante {
  billeder b;
  maelkeboette(billeder b) {
    this.b=b;
  }
  void display() {
    super.display();
    imageMode(CENTER);
    image(b.plante2, x, y,sizex,sizey);
  }
}
