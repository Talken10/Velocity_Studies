class Mover
{
 PVector location = new PVector (0,0) ; 
 PVector velocity = new PVector(0,0); //(x direction and speed, y direction and speed), direction (- or +) speed (#) 
 PVector acceleration = new PVector(0.01,0.03);
 
 Mover()
 {
  
 }
 
 void update()//what it does
 {
  
  PVector mouse = new PVector (mouseX, mouseY);
  PVector dir = PVector.sub(mouse, location);
  dir.normalize();
  dir.mult(.5);

  velocity.add(dir);
  velocity.limit(6); //limits the velocity so it can't be bigger than 6
  location.add(velocity); 

  //if the x is bigger than the width or 0 then it will return to the 0 or width 
  if (location.x < 0) location.x = width;
  if (location.x > width) location.x = 0;
  
  //if the y is bigger than the height or 0 then it will return to the 0 or height
  if (location.y < 0) location.y = height;
  if (location.y > height) location.y = 0;
 }
 
 void display()//what it looks like
 {
  stroke(0);
  fill(150,0,255);
  circle(location.x, location.y, 16);
 }
 
}
