int ellipseX = (int)random(width), ellipseY = (int)random(height);
int ellipseX2 = (int)random(width), ellipseY2 = (int)random(height);
PImage img;

final float PHI = (1 + sqrt(5))/2;  //golden ratio
ArrayList<Ball> balls;
int counter = 0;
boolean callMethod = false;

void setup()
{
  fullScreen();
  img = loadImage("earth.png");
  imageMode(CENTER);
  background(0);
  img.resize(0, height);

  balls = new ArrayList<Ball>();
  balls.add (new Ball(10, 0));
}
void draw()
{

  for (int i = 0; i<100; i++)
  {
    if(mousePressed == false)
    {
       if(callMethod == true){
    BG();
    callMethod = false;
  }
    ellipseX = ellipseX + (int)random(-50, 50);
    ellipseY = ellipseY + (int)random(-30, 30);

    ellipseX2 = ellipseX2 + (int)random(-50, 50);
    ellipseY2 = ellipseY2 + (int)random(-30, 30);

  
      color pix = img.get(ellipseX, ellipseY);

      color pix2 = img.get(ellipseX2, ellipseY2);

      fill(pix, 128);    
      ellipse(ellipseX, ellipseY, 4, 4);
      fill(pix2, 128);
      ellipse(ellipseX2, ellipseY2, 4, 4);
    }
  }
  
if (mousePressed)
{
  background(0);
      //fill(d, c, e);
      noStroke();

      float c = map(ellipseX, 0, width, 0, 255);
      float e = map(ellipseY, 0, height, 0, 1000);
      float d = map(ellipseY, 0, height, 0, 255);

      fill(c, e, d);
      for (int x = balls.size() - 1; x >= 0; x--)
      {
        Ball b = balls.get(x);
        b.move(x, balls);
        b.display();
        if (b.isDead())  balls.remove(x);
      }

      counter++;
      balls.add (new Ball(10 - (counter%500)/50, counter*PHI*TAU));
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

  if (ellipseX2 > width) 
  {
    ellipseX2 = 0;
  } else if (ellipseX2 < 0) 
  {
    ellipseX2 = width;
  }

  if (ellipseY2 > height) 
  {
    ellipseY2 = 0;
  } else if (ellipseY2 < 0) 
  {
    ellipseY2 = height;
  }


}


  void mouseReleased()
  {
callMethod = true;
  } 

void BG()
{
 background(0); 
}