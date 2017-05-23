int ellipseX = (int)random(width), ellipseY = (int)random(height);
PImage img;

void setup()
{
  fullScreen();
  background(0);
  img = loadImage("Zack2.png");
  imageMode(CENTER);
}
void draw()
{
  for (int i = 0; i<100; i++)
  {
    if (mousePressed == false)
    {
      color pix = img.get(ellipseX, ellipseY);
      fill(pix, 128);    
    ellipseX = ellipseX + (int)random(-10, 30);
    ellipseY = ellipseY + (int)random(-10, 25);
    float c = map(ellipseX, 0, width, 0, 255);
    float e = map(ellipseY, 0, height, 0, 1000);
    float d = map(ellipseY, 0, height, 0, 255);

    fill(d, c, e);
    noStroke();
    rect(ellipseX, ellipseY, 4, 4);
  }

  //fill(255);
  if (mousePressed)
  {
    ellipse(mouseX, mouseY, 5, 5);
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