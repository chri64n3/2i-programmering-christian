int antalKasserNed = 18;

void setup() {
  size(800, 800);
  rectMode(CENTER); 
  frameRate(20);
}

void draw() {
  clear();
  fill(255);
  int antalNed = 0;  //jeg har lavet det her stykke kode for at lave et loop og derfor har jeg også skrevet "antalNed++" i bunden så den hele tiden stiger med 1
  while (antalNed != antalKasserNed) { //det her er loopede og så længe som alt inde i parentesser er sande køre det
    for (int i = 40; i < 760; i++) { //her har jeg givet den dens vadier som skal køre 760 gange og blive 1 gang strørrer hele tiden
      if (i % 40 == 0) { // jeg bruger modulo til at tegne en kasse vær 40'ne gang 
       float boxSize = random(20, 40); // her har jeg lavet en min kasse størelse som en float og det er random for det gør at kasserne hele tiden skifter størelse
        rect(i, ((40 * antalNed) + 40), boxSize, boxSize); // det her er min kasses "x,y,og begge størelserne"  og jeg har lavet begge størelserne den samme float for ellers vile den lave en rektangel og ikke en kvardaret 
      }
    }
    antalNed++;
  }
}
