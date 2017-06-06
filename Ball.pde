class Ball
{
  PVector center,
             pos,  
             dir;  
  float diam;  
  

  
  Ball(float diam_, float angle)
  {
    center = new PVector(width/2, height/2, 1); 
    pos = center.get();
    dir = new PVector(cos(angle), sin(angle), 0);
    diam = diam_;
  }
  

  
  void move(int id, ArrayList<Ball> balls)
  {
    for (int i = id + 1; i < balls.size() - 1; i++)
    {
      Ball b = balls.get(i);
      if (PVector.dist(pos, b.pos) < 12)  pos.add(dir);
    }
  }
   

   
  void display()
  {
    ellipse(pos.x, pos.y, diam, diam);
  }
  

  
  boolean isDead()
  {
    if (PVector.dist(pos, center) > width/3) return true;
    else return false;
  }
}