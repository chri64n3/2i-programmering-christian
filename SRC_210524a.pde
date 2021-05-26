Table table;

ArrayList<State> listeNorthCarolina = new ArrayList<State>();
ArrayList<State> listeGeorgia = new ArrayList<State>(); 
ArrayList<State> listeFlorida = new ArrayList<State>(); 
ArrayList<State> listeAlabama = new ArrayList<State>(); 
ArrayList<State> listeTexas = new ArrayList<State>(); 
ArrayList<State> listeMississippi = new ArrayList<State>(); 


int valgt = 0;

void setup() {
  table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/rolling-averages/us-counties-recent.csv", "header");
  background(255, 255, 255);
  size(1900, 1000);

  udskrivState();
}

void draw() {
 
}

void udskrivState() {
  int akkNC=0, akkG=0, akkF=0, akkA=0, akkT=0, akkM = 0;
  for (TableRow r : table.rows()) {

    String sf = r.getString("state");
    int cf = r.getInt("cases");
    int df = r.getInt("deaths");


 
    if (sf.equals("North Carolina")) {
      akkNC = akkNC + cf;
      listeNorthCarolina.add(new State(sf, cf, df, akkNC));
    }
    if (sf.equals("Georgia")) {
      akkG = akkG + cf;
      listeGeorgia.add(new State(sf, cf, df, akkG));
    }
    if (sf.equals("Florida")) {
      akkF= akkF + cf;
      listeFlorida.add(new State(sf, cf, df, akkF));
    }
    if (sf.equals("Alabama")) {  
      akkA= akkA + cf;
      listeAlabama.add(new State(sf, cf, df, akkA));
    }
    if (sf.equals("Texas")) {
      akkT= akkT + cf;
      listeTexas.add(new State(sf, cf, df, akkT));
    }
    if (sf.equals("Mississippi")) {
      akkM= akkM + cf;
      listeMississippi.add(new State(sf, cf, df, akkM));
    }
  }

  textSize(39);
  int nc = listeNorthCarolina.get(listeNorthCarolina.size()-1).a;
  int G = (listeGeorgia.size()==0 ? 0 : listeGeorgia.get(listeGeorgia.size()-1).a);
  int F = (listeFlorida.size()==0 ? 0 : listeFlorida.get(listeFlorida.size()-1).a);
  int A = (listeAlabama.size()==0 ? 0 : listeAlabama.get(listeAlabama.size()-1).a);
  int T = (listeTexas.size()==0 ? 0 : listeTexas.get(listeTexas.size()-1).a);
  int M = (listeMississippi.size()==0 ? 0 : listeMississippi.get(listeMississippi.size()-1).a);
  fill(#3300CC);
  text("total cases:" + listeNorthCarolina.get(listeNorthCarolina.size()-1).a, 100, 100);
  fill(255, 0, 0);
  rect(60, 125, nc/60, 20);
  fill(#3300CC);
  text("total cases:" + (listeGeorgia.size()==0 ? 0 : listeGeorgia.get(listeGeorgia.size()-1).a), 100, 200);
  fill(255, 0, 0);
  rect(60, 225, G/60, 20);
  fill(#3300CC);
  text("total cases:" + (listeFlorida.size()==0 ? 0 : listeFlorida.get(listeFlorida.size()-1).a), 100, 300);
  fill(255, 0, 0);
  rect(60, 325, F/60, 20);
  fill(#3300CC);
  text("total cases:" + (listeAlabama.size()==0 ? 0 : listeAlabama.get(listeAlabama.size()-1).a), 100, 400);
  fill(255, 0, 0);
  rect(60, 425, A/60, 20);
  fill(#3300CC);
  text("total cases:" + (listeTexas.size()==0 ? 0 : listeTexas.get(listeTexas.size()-1).a), 100, 500);
  fill(255, 0, 0);
  rect(60, 525, T/60, 20);
  fill(#3300CC);
  text("total cases:" + (listeMississippi.size()==0 ? 0 : listeMississippi.get(listeMississippi.size()-1).a), 100, 600);
  fill(255, 0, 0);
  rect(60, 625, M/60, 20);
}
