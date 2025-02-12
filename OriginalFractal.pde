public void setup()
{
  size(500,500);
  rectMode(CENTER);
  
}


public void draw(){
background(0);
myelFractal(250, 250, 500);
mytriFractal(10, 10, 100);
mytriFractal(490, 490, -100);

}

public void myelFractal(int x, int y, int siz){
  fill((float)(Math.random()*255), 0, 0);
ellipse(250, 250, siz, siz);


if (siz > 1){
myelFractal(x, y, siz * 8/10);
//myelFractal(x, y, siz/3);
}
}

public void mytriFractal(int x, int y, int siz){
  fill(0, 0, (float)(Math.random()*255));
triangle(x, y, x + siz, y, x, y+siz);


if (Math.abs(siz) > 1){
mytriFractal(x, y, siz * 8/10);
//myelFractal(x, y, siz/3);
}
}
