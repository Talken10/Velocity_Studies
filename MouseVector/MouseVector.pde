void setup()
{
 size (800,800); 
}

void draw()
{
  background(255);
  PVector m = new PVector (mouseX, mouseY);
  PVector c = new PVector (width/2, height/2);
  m = m.sub(c); //mouse vector = mouse vector - vector of the center
  m.setMag(100); //set magnitude. short hand for m.normalize(); m.mult(100); which would give same result. 
  
  translate(width/2, height/2);
  
 line(0,0, m.x, m.y); 
}
