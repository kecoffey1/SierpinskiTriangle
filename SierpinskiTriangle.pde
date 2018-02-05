int len = 1000;
int tnum = 0;
int x1 = 1000; 
public void setup()
{
  size(1000, 1000);
  background(0);
  sierpinski(0, 1000, len);
}
public void draw()
{


}
public void mousePressed(){
  tnum++;
  if(tnum < 9){
    background(0);
    x1 = x1/2;
    sierpinski(0, 1000, len);
  }
  else {
    tnum = 0;
    x1 = 1000; 
    sierpinski(0, 1000, len);
  }
}
public void sierpinski(int x, int y, int len)
{
if(len <= x1) {
  triangle(x, y, x+len/2, y-len, x+len, y);
}
else 
{
  sierpinski(x, y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y - len/2, len/2);
}
}