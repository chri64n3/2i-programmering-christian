class Plante extends verdensObjekter {

  Plante() {
    x = int(random(100, 900));
    y = int(random(100, 900));
  }

  void display() {
    if (sizex >= 60) {
      sizex = sizex + 0.2;
    }
    if (sizey >= 60) {
      sizey = sizey + 0.2;
    }
  }

  void move() {
  }
}
