linkedList liste;


void setup() {
  liste = new linkedList();
  
  liste.add(1);
  liste.add(2);
  liste.add(3);
  liste.add(4);
  liste.nodeStart(5);
  liste.add(10,3);
  liste.add(420,2);
  liste.add(2);
  liste.nodeStart(6);
  liste.add(69,5);
  liste.add(55,5);
  
  liste.printNewest();
 
}


void loop() {
}
