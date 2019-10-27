Die[] dice = new Die[5];
void setup(){
  noLoop();
  size(600,400);
  for(int i = 0; i < dice.length; i++){
    dice[i] = new Die(100 + (100 * i),100);
  }
}
void draw(){
  background(0,200,0);
  for(int i = 0; i < dice.length; i++){
    dice[i].roll();
    dice[i].show();
  }
}
void mousePressed(){
  redraw();
}
class Die{
  int myX, myY, num;
  
  Die(int x, int y){
    myX = x - 20;
    myY = y - 20;
  }
  void roll(){
    num = (int)(Math.random() * 6) + 1;
    
  }
  void show(){
    fill(255);
    stroke(0);
    rect(myX, myY, 40, 40, 8);
    fill(0);
    noStroke();
    if(num % 2 != 0){
      ellipse(myX + 20, myY + 20, 8, 8);
    }
    if(num >= 2){
      ellipse(myX + 10, myY + 30, 8, 8);
      ellipse(myX + 30, myY + 10, 8, 8);
    }
    if(num >= 4){
      ellipse(myX + 10, myY + 10, 8, 8);
      ellipse(myX + 30, myY + 30, 8, 8);
    }
    if(num == 4){
      ellipse(myX + 10, myY + 20, 8, 8);
      ellipse(myX + 30, myY + 20, 8, 8);
    }
  }
}
