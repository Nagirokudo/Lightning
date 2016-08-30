int startX = 0;
int endX = 0;
int startY = 150;
int endY = 150;

void setup()
{
  size(400,400);
  background(255, 240, 245);
  strokeWeight(5);
}
void draw()
{
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	while (endX < 400) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*19) - 9;
	}
	line(startX, startY, endX, endY);
	startX = endX;
	startY = endY;
}
void mousePressed()
{
	startX = 0;
	endX = 0;
	startY = 150;
	endY = 150;

}

