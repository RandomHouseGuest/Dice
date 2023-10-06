void setup()
{
  noLoop();
  background(0, 0, 0);
  size(460, 445);
  int sum = 0;
}
void draw(){
  for(int y = 5; y<= 400; y+=55){
    for(int x = 5; x <= 400; x+=55){
      Die bob = new Die(x,y);
      sum+=placeholder;
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
  }
  void show(){
    noStroke();
    fill(255,255,255);
    rect(myX,myY,50,50);
    text("Total: ", 450, 200);
    text(totalsum, 450, 225);
  }
}
