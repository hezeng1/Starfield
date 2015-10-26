Particle [] balls;
void setup()
{
   size(800,800);
   balls = new Particle[250];
   for(int i = 1; i<balls.length;i++)
   {
   	 balls[i] = new NormalParticle();
   	}
   	 balls[0] = new OddballParticle();
   	 balls[1] = new JumboParticle();
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
class NormalParticle implements Particle 
{

double x,y,speEd,anGle;
int rEd, gReen, bLue,siZez; 
NormalParticle()
  {
  	x = 400;
  	y = 400; 
  	speEd = (Math.random()*69);
  	anGle = (Math.random()*2*Math.PI);
  	rEd = (int)(Math.random()*256);
  	gReen =(int)(Math.random()*256);
  	bLue = (int)(Math.random()*256);
  	siZez = 5;

  }
public void move()
{
  x+=(Math.cos(anGle)*speEd);
  y+=(Math.sin(anGle)*speEd);
  anGle+=.0000005;
  
}
public void show()
{ 
 fill(rEd,gReen,bLue);
 ellipse(((float)x),((float)y),siZez,siZez);
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
	public void move();
	public void show();
	public void wrap();
}
class OddballParticle implements Particle 
{
	double oDdx,oDdy, oDdspeed,oDdangle; 
	int oDdred,oDdgreen,oDdblue;
	OddballParticle()
	{
		oDdx= 400;
		oDdy= 400;
		oDdspeed= (Math.random()*8);
		oDdangle = (Math.random()*2*Math.PI);
		oDdred = (int)(Math.random()*256);
		oDdgreen = (int)(Math.random()*256);
		oDdblue = (int)(Math.random()*256);
		
	}
	public void move()
	{
		oDdx += (Math.tan(oDdangle)*oDdspeed);
		oDdy += (Math.sin(oDdangle)*oDdspeed);
	} 
	public void show()
	{
		fill(oDdred,oDdgreen,oDdblue);
		ellipse(((float)oDdx),((float)oDdy),20,20);
	}
	public void wrap()
	{
		if(oDdx>800 || oDdx<0 || oDdy>800 || oDdx<0)
		{
            oDdx= 400;
		    oDdy= 400;
			oDdspeed= (Math.random()*8);
			oDdangle = (Math.random()*2*Math.PI);
		}
	}
    

}
class JumboParticle extends NormalParticle 
{
      
     JumboParticle()
     {
        siZez = 50;
     }
}

