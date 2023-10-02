void setup()
{
	noLoop();
}
void draw(){
	for(int y = 0; y<= 400; y+=55){
		for(int x = 0; x <= 400; x+=55){
			Die bob = new Die(x,y);
      			bob.show();
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
		
	}
	void show(){
		noStroke();
    		fill(255,255,255);
    		rect(myX,myY,50,50);
	}
}
