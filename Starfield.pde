NormalParticle [] balls;
void setup()
{
   size(800,800);
   balls = new NormalParticle[500];
   for(int i = 0; i<balls.length;i++)
   {
   	 balls[i] = new NormalParticle();
   } 

}
void draw()
{
    background(0);
	for(int p = 0; p<balls.length;p++)
	{
	    balls[p].move();
	    balls[p].show();
	    balls[p].wrap();
	}
}
class NormalParticle
{

double x,y,speEd,anGle;
int rEd, gReen, bLue; 
NormalParticle()
  {
  	x = 400;
  	y = 400; 
  	speEd = (Math.random()*69);
  	anGle = (Math.random()*2*Math.PI);
  }
void move()
{
  x+=(Math.cos(anGle)*speEd);
  y+=(Math.sin(anGle)*speEd);
}
void show()
{ 
 fill(255);
 ellipse(((int)x),((int)y),5,5);
}
void wrap()
{
	if(x>800 || x<0 || y>800 || y<0)
	{
		x = 400;
  	    y = 400; 
  	    speEd = (Math.random()*69);
  	    anGle = (Math.random()*2*Math.PI);
	}

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

