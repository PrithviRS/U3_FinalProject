float ellipseX = random(width), ellipseY = random(height);

void setup()
{
  fullScreen();
}
void draw()
{
  for (int i = 0; i<100; i++)
  {
    for (int j = 0; i<100; i++)
    {
      if(mousePressed == false)
      {
      ellipseX = ellipseX +random(-10, 30);
      ellipseY = ellipseY +random(-10, 15);
      float c = map(ellipseX, 0, width, 0, 255);
      float e = map(ellipseY, 0, height, 0, 1000);
      float d = map(ellipseY, 0, height, 0, 255);

      fill(d, c, e);
      ellipse(ellipseX, ellipseY, 5, 5);
      }

//fill(255);
if(mousePressed)
{
      ellipse(mouseX, mouseY, 5,5);
}
    }
  }
  if (ellipseX > width) 
  {
    ellipseX = 0;
  } else if (ellipseX < 0) 
  {
    ellipseX = width;
  }

  if (ellipseY > height) 
  {
    ellipseY = 0;
  } else if (ellipseY < 0) 
  {
    ellipseY = height;
  }
}