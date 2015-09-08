void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	background(242,254,14);
	for(int x = 100; x<400; x=x+100){
		Die pikachu = new Die(x,350);
		pikachu.show();
		
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
