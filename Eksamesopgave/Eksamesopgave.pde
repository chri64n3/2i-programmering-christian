ArrayList<Dyr> dyreListe = new ArrayList<Dyr>();
ArrayList<Terraen> TerraenListe = new ArrayList<Terraen>();
ArrayList<Plante> PlanteListe = new ArrayList<Plante>();

billeder b = new billeder();
void setup() {
  size(1000, 1000);
  b.loadBilleder();
}

void draw() {
  for (Terraen t : TerraenListe) {
    for (Dyr d : dyreListe) {
      if (d.x>t.x && d.x<t.x+150 && d.y > t.y && d.y < t.y + 150) {
 
      }
    }
  }
  clear();
  for (Dyr d : dyreListe) {
    d.display();
    d.move();
  }
  for (Terraen t : TerraenListe) {
    t.display();
    t.move();
  }
  for (Plante p : PlanteListe) {
    p.display();
    p.move();
  }
}

void keyPressed(  ) {   
  Dyr d; 
  Terraen t;
  Plante p;

  if (key == 'w') {
    d = new Sloth(b);
    dyreListe .add(d);
    d.x = mouseX; 
    d.y = mouseY;
  }
  if (key == 'z') {
    t = new Terraen(b);
    TerraenListe .add(t);
  }
  if (key == 's') {
    p = new foxTail(b);
    PlanteListe .add(p);
  }
  if (key == 'a') {
    p = new maelkeboette(b);
    PlanteListe .add(p);
  }
  if (key == 'q') {
    d = new meerKat(b);
    dyreListe .add(d);
  }
}  
