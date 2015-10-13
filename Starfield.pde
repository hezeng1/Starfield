NormalParticle [] balls;
void setup()
{
   size(300,300);
   balls = new NormalParticle[50];
   for(int i = 0; i<balls.length;i++)
   {
   	 balls[i] = new NormalParticle();
   } 

}
void draw()
{
	//background(0);
	for(int p = 0; p<balls.length;p++)
	{
	    balls[p].show();
	    balls[p].move();
	}
}
class NormalParticle
{

double x,y,speEd,anGle; 
NormalParticle()
  {
  	x = 150;
  	y = 150; 
  	speEd = 2;
  	anGle = 360;
  }
void move()
{
  x+=(Math.cos(anGle)*speEd);
  y+=(Math.sin(anGle)*speEd);
}
void show()
{ 
 fill(255);
 ellipse(((int)x),((int)y),10,10);
}

}

interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

