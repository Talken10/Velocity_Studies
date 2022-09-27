PVector pos = new PVector(100,100);  
PVector speed = new PVector (1,2.1); 

void setup()
{
 size(800,800); 

}

void draw()
{
 background(255);
 translate(width/2, height/2);
 circle(pos.x, pos.y, 30);
 drawV(pos, color(0,0,0));
 pos = pos.add(speed); // allows two classes to be added together (adding a new vector with a speed)
 
 if (pos.y > height || pos.y < 0)
  {
   speed.y = speed.y * (-1); 
  }
  
  
  if (pos.x > height || pos.x < 0)
  {
   speed.x = speed.x * (-1); 
  }
  
}

void draw(PVector v, color c)
{
  stroke(c);
  line(0,0,v.x,v.y);
  circle(v.x,v.y, 10);
}
