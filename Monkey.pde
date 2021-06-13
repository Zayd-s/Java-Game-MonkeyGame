class Monkey
{
  int x;
  int y;
  int dy;
  PImage Monkey;

  Monkey(int x, int y) {    
    this.x = x;
    this.y = y;
    dy = 2;
    Monkey = loadImage("Monkey.png");
    
  }
  
  void render()
  {
    
    image(Monkey,x,y);
    shake();
    movement();
  }
  
  void shake()
  {
    dy = (int) random(-15,15);
    if (y <=0){
      dy = 2;
    }
      
    if (y >=768-75){
      dy = -2;
    }
    y += dy;
    
  }
  
  void movement()
  {
    x = x-4;
    if (x <= 0){
      x = 768+75+(int)random(1000);
      lives--;

    }
  }
}
