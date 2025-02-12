public void setup()
{
  size(500,500);
  rectMode(CENTER);
}

int myX = 250;
int myY = 250;
public void draw(){
background(0);
myelFractal(myX+700, myY+300, 200);
myelFractal(myX/2, myY, 100);
myX+=(int)(Math.random()*11) - 5;
myY+=(int)(Math.random()*11) - 5;
if(myX > 700){
myX = 0;
}
if (myY > 700){
myY = 0;
}

if(myX < 0){
myX = 500;
}
if (myY < 0){
myY = 500;
}
}

public void myelFractal(int x, int y, int siz){
  fill((float)(Math.random()*255), 0, 0);
ellipse(x, y/2, siz/2, siz);
ellipse(x/4, y/2, siz/2+3, siz*2);

if (siz > 1){
myelFractal(x-siz, y+siz/10, siz/2);
myelFractal(x+siz, y-siz/11, siz/3);
}
}
