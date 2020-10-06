//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
int talY = 400;
int rectH = 10;
int rectL = 45;
int rectPlace = 350;

int[] alleKast = new int[36];
int fuldKasse = 0;
int[] fordeling = new int[6];
void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}


void draw() {
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    //println(alleKast);

    if (fuldKasse != 35 || fuldKasse > 35) {
      int kast = lavTerningeKast(1, 6);
      fuldKasse++;
      alleKast[fuldKasse] = kast; 
      text("DIT KAST BLEV:" + kast, 50, 75);
    } else {
      text("du har ikke flere kast", 50, 75);
    }
  }

  if (key == 's'&&fuldKasse>0) {
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }

  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();


  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();

}

int lavTerningeKast(int min, int max) {

  int kastet = int(random(min, max + 1));

  if (kastet == 6) {
    fordeling[5]=fordeling[5]+1;
  }
  if (kastet == 5) {
    fordeling[4]=fordeling[4]+1;
  }
  if (kastet == 4) {
    fordeling[3]=fordeling[3]+1;
  }
  if (kastet == 3) {
    fordeling[2]=fordeling[2]+1;
  }
  if (kastet == 2) {
    fordeling[1]=fordeling[1]+1;
  }
  if (kastet == 1) {
    fordeling[0]=fordeling[0]+1;
  }

  return kastet;
}


void fjernSidsteKast() {
  
  
 
  if (alleKast[fuldKasse]==1)fordeling[0]--;
  if (alleKast[fuldKasse]==2)fordeling[1]--;
  if (alleKast[fuldKasse]==3)fordeling[2]--;
  if (alleKast[fuldKasse]==4)fordeling[3]--;
  if (alleKast[fuldKasse]==5)fordeling[4]--;
  if (alleKast[fuldKasse]==6)fordeling[5]--;
 fuldKasse--;
 


  
}

void tegnFordeling() {
  textSize(32);
  text("1", 50, talY); 
  text("2", 100, talY); 
  text("3", 150, talY); 
  text("4", 200, talY); 
  text("5", 250, talY); 
  text("6", 300, talY); 
  textSize(12);
  rect(40, rectPlace, rectL, fordeling[0]*-rectH);
  rect(90, rectPlace, rectL, fordeling[1]*-rectH);
  rect(140, rectPlace, rectL, fordeling[2]*-rectH);
  rect(190, rectPlace, rectL, fordeling[3]*-rectH);
  rect(240, rectPlace, rectL, fordeling[4]*-rectH);
  rect(290, rectPlace, rectL, fordeling[5]*-rectH);
}

void udskrivKast(){
  for(int x=1;x<=fuldKasse;x++){
   text("Kast "+x+": "+alleKast[x],500,50+20*x);
  }
}
