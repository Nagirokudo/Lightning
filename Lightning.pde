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
	stroke(255, (int)(Math.random()*150)+100, (int)(Math.random()*45)+200);
	while (endX < 400) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*15) - 5;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

	head2();
}
	
void mousePressed()
{
	startX = (int)(Math.random()*95)+60;
	endX = 0;
	startY =(int)(Math.random()*150)+100;
	endY = 100;

}

void head2()
{
	pushMatrix();
	translate(100,140);
	rotate(((5*PI)/12)*.7);
	noStroke();
	fill(255,20,147);
	ellipse(0,0,200,250);
	//eye
	fill(255,215,0);
	ellipse(-30,-40,40,20);
	ellipse(-30,30,40,20);
	popMatrix();

}