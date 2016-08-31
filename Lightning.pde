int startX = 100;
int endX = 0;
int startY = 150;
int endY = 150;

void setup()
{
  size(400,400);
  background(100,149,237);
  strokeWeight(5);
}
void draw()
{	
	head();
	stroke(255, (int)(Math.random()*150)+100, (int)(Math.random()*45)+200);
	while (endX < 400) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*15) - 5;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
	
void mousePressed()
{
	startX = (int)(Math.random()*100)+50;
	endX = 0;
	startY =(int)(Math.random()*150)+100;
	endY = 100;

}

void head()
{
	pushMatrix();
	translate(90,100);
	rotate(PI/3);
	fill(255,20,147);
	ellipse(0,0,200,250);
	popMatrix();
}