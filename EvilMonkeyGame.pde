PImage backgroundImage; 
int points;
int lives = 10;

Monkey[] invader = new Monkey[10];


void setup()
{
  size (1024, 768);
  
  backgroundImage = loadImage("Jungle.jpg");
  backgroundImage.resize(width, height); // sets my background image to the size of the whole programme.
  
  for (int i = 0 ; i<10; i++)
  {
    invader[i] = new Monkey(768+75+(int)random(1000) , (int)random(height));
    
    
  }
}

void draw()
{
  
  
  image(backgroundImage,0,0);
  
  for (int i = 0 ; i<10; i++)
  {
    invader[i].render();
    
  }
  textSize(19);
  text("points ="+points,350,20);
  
  textSize(19);
  text("lives = "+lives, 10, 20);
  
  if(lives <= 0){
    stop();
    
    fill(0,0,0);
    textSize(50);
    text("Game Over!", 512-60, 359-35);
    
    fill(0,0,0);
    textSize(25);
    text("Your points = "+points, 512-35, 584-35);
    

  }
}
void mousePressed() 
{
  for (int i = 0 ; i<10; i++){
    if(mouseX > invader[i].x && mouseX < invader[i].x + 75){ 
      if(mouseY > invader[i].y && mouseY < invader[i].y + 75){ //when I mouse click onto the pixel area of a monkey, it removes it from the game
      invader[i] = new Monkey(768+75+(int)random(1000) , (int)random(height)); //when a monkey is removed, it resets the monkey to spawn point
      points = points + 1;
      }
    }
  }

}
