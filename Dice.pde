void setup()
{
  noLoop();
  background(0, 128, 255);
  size(445, 460);
  textAlign(CENTER,CENTER);
  textSize(15);
}
void draw(){
  for(int y = 5; y<= 400; y+=55){
    for(int x = 5; x <= 400; x+=55){
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
      }
    }
}
void mousePressed()
{
  redraw();
}
class Die{
  int myX, myY;
  Die(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
    fill(0, 0, 0);
    int totalsum = 0;
    int placeholder = (int)(Math.random()*6)+1;
    if(placeholder == 1){
      ellipse(myX+25, myY+25, 10, 10);
    } else if(placeholder == 2){
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if(placeholder == 3){
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if(placeholder == 4){
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if(placeholder == 5){
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else{
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
      totalsum+=placeholder;
      text("Total: " + totalsum, 200, 450);
  }
  void show(){
    noStroke();
    fill(255,255,255);
    rect(myX,myY,50,50);
  }
}
