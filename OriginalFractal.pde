public void setup(){
size (500,500);
}

public void draw(){
background(127);
myFractal(250,250,200);
}

public void mousePressed()
{
fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));	
}

public void myFractal(int x, int y, int siz){
triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
if(siz>10)
	{
	  myFractal(x-siz/2,y,siz/2);
	  myFractal(x+siz/2,y,siz/2);
	}
}