Chemotaxi [] dots;

void setup(){
  size(300,300); 
  dots = new Chemotaxi[50]; 
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Chemotaxi(); 
  }  
}

void draw(){
  background(198, 198, 198);
  for(int i = 0; i < dots.length; i++){
    dots[i].move();
    dots[i].show(); 
  }  
}

class Chemotaxi
{
  int myX, myY, myColor;

  Chemotaxi()//no argument constructor
  {
    myX = (int)(Math.random() * width) + 1; 
    myY = (int)(Math.random() * height) + 1;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }  
  void move(){
    myX = myX + (int)((Math.random() * 10) - 5);
    myY = myY + (int)((Math.random() * 10) - 5);
    if(myX >= width)
      myX = 10; 
    if(myY >= height)
      myY = 10; 
    if(myX <= 0)
      myX = width; 
    if(myY <= 0)
      myY = height; 
  }
  void show(){ 
    fill(myColor);
    ellipse(myX, myY, 15, 15);    
  }   
}
  
