void setup()
{
  noLoop();
  size(400,400);
}
void draw()
{
  background(142,154,14);
  int sum=0;
  for(int y=100;y<385;y=y+100){
    for(int x = 100; x<400; x=x+100){
      Die pikachu = new Die(x,y);
      pikachu.roll();
      pikachu.show();
      if(pikachu.value<10){
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
    if(value==1){
      fill(234,36,213);
      ellipse(myX+45,myY+55,10,10);
    }
    if(value==2){
      fill(255,195,14);
    }
    if(value==3){
      fill(255,233,15);
    }
    if(value==4){
      fill(152,24,223);
    }
    if(value==5){
      fill(255,255,255);
    }
    if(value==6){
      fill(13,236,13);
    }
    if(value==7){
      fill(12,216,216);
    }
    if(value==8){
      fill(10,27,97);
    }
    if(value==9){
      fill(255,14,14);
    }
    rect(myX,myY,myX+32,myY+32);
    fill(0);
  }
  void show()
  {
    if(value==1){
      ellipse(myX+50,myY+50,10,10);
    }
    if(value==2){
      ellipse(myX+25,myY+50,10,10);
      ellipse(myX+70,myY+50,10,10);
    }
    if(value==3){
      ellipse(myX+50,myY+25,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+50,myY+70,10,10);
    }
    if(value==4){
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+70,10,10);
      ellipse(myX+70,myY+25,10,10);
      ellipse(myX+70,myY+70,10,10);
    }
    if(value==5){
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+70,10,10);
      ellipse(myX+70,myY+25,10,10);
      ellipse(myX+70,myY+70,10,10);
      ellipse(myX+50,myY+50,10,10);
    }
    if(value==6){
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+50,10,10);
      ellipse(myX+25,myY+70,10,10);
      ellipse(myX+70,myY+25,10,10);
      ellipse(myX+70,myY+50,10,10);
      ellipse(myX+70,myY+70,10,10);
      }
  }
}
