int[] list = new int[7];
int index = 0;
int mindsteTal = 1000;
int mindsteIndex = 0;
int pladsCount = 0;
int holder = mindsteIndex;


void setup() {
  list[0] = 5;
  list[1] = 4;
  list[2] = 8;
  list[3] = 9;
  list[4] = 1;
  list[5] = 3;
  list[6] = 6;


  while (index < 6) {
    //println(list[index]);
    index = index+1;
    if (list[index]<mindsteTal) {
      mindsteTal = list[index];
      mindsteIndex = index;
    }
  }
  println(mindsteTal);
  println(mindsteIndex);
  int pladsCount = list[pladsCount];
  int mindsteIndex = list[mindsteIndex];
  list[pladsCount] = mindsteIndex;
  list[mindsteIndex] = pladsCount; 
  
  
}
