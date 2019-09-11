float posX;
float posY;

float speedX = 6.0;
//float speedY = 0.5;

float circDiam = 120;
boolean toRight = true;

void setup(){
  size(600, 800);

  posX = width/2;
  posY = height/2;
}

void draw(){
  background(127);

  if(posX + circDiam/2 >= width){
    toRight = false;
  }
  if(posX - circDiam/2 <= 0){
    toRight = true;
  }

  if(toRight){
    posX = posX+speedX;
  }
  else {
    posX = posX-speedX;
  }


  //posY = posY+speedY;

  circle(posX, posY, circDiam);
}
