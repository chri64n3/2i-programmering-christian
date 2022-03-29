class TextBox{

  int W,H,X,Y;
  int type=0;
  
  color farve = 255;
  
  boolean valgt = false;
  
  TextBox(int x, int y, int w, int h, int t){
    X = x;
    Y = y;
    W = w;
    H = h;
    type=t;
  }
  
  TextBox(int t){ 
    type =t;
  }
  
  void DRAW(){
    
    if (!valgt || type != 1){
     
      
      
    fill(farve); 
    rect(X, Y, W, H);
    
    
    }
    else {
      fill(farve);
      rect(X, Y, W, H*3);
     
    }

  }
  
  void PRESSED(float inX, float inY){

    
    if (inX > X & inX < X + W & inY > Y & inY < Y+ + H) {
      valgt = !valgt;
      println(valgt);
    }
    
  }
  
}
