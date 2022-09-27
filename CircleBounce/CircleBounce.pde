float ypos = 100;
float yspeed = 20;
float xpos = 50;
float xspeed = 10;

void setup()
{
 size(800,800); 

}

void draw()
{
 background(255);
 
 //Circle
 noStroke();
   if(xpos < 400)
  {
   fill(255,0,0);
  }
  else
  {
   fill(0,255,0); 
  }
 circle(xpos,ypos,50); 
 
ypos = ypos + yspeed;
xpos = xpos + xspeed;
if (ypos > height || ypos < 0)
  {
   yspeed= yspeed * (-1); 
  }
  
  
  if (xpos > height || xpos < 0)
  {
   xspeed= xspeed * (-1); 
  }
  

}
