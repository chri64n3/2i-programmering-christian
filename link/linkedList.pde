int counter = 0;
int biggestNum = 1000;
class linkedList {
  Node first;
  

  void add(int a) {
    Node current = first;

    if (first == null) {
      first = new Node(a);
    } else {
      while (current.next != null) {
        current = current.next;
      }
      current.next = new Node(a);
    }
  }


  void printNewest() {
    Node current=first;
    while (current.next !=null) {
      println(current.value);
      current=current.next;
    }
    println(current.value);
  }

  void nodeStart(int a) {
    Node N = new Node(a);
    if (first == null ) {
      first = N;
    } else {
      N.next = first;
      first = N;
    }
  }

  void add(int a, int b) {
    Node newN = new Node(a);
    Node N = first; 
    Node beforeN = first;
    counter = 0;
    while (N != null) {
      if (b == counter) {
        break;
      }

      if (counter>0) {
        beforeN = beforeN.next;
      }
      N = N.next;
      counter++;
    }
    newN.next = N;
    beforeN.next = newN;
  }

/*  void findBiggestNumber() {
    while (liste < 1000) {
    //println(list[index]);
    index = index+1;
    if (list[index]<mindsteTal) {
      mindsteTal = list[index];
      mindsteIndex = index;
    }
  }
  println(biggestNum);
  
  int pladsCount = list[pladsCount];
  int biggestNum = list[mindsteIndex];
  list[pladsCount] = mindsteIndex;
  list[mindsteIndex] = pladsCount; 
*/
}
