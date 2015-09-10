void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	background(242,254,14);
	int sum=0;
	for(int y=100;y<385;y=y+100){
		for(int x = 100; x<400; x=x+100){
			Die pikachu = new Die(x,y);
			pikachu.show();
			if(pikachu.value<6){
			sum=sum+pikachu.value;
			}
		}
	}
	text(""+sum,23,34);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
		value=(int)(Math.random()*9)+1;
		
	}
	void roll()
	{
		
	}
	void show()
	{
		fill(243,65,73);
		rect(myX,myY,myX+32,myY+32);
		fill(0);
		text(""+value,myX+45,myY+55);
	}
}
