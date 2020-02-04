//Hello Processing
//Olivia Pemberton
int a = 150;
int b = 150;
int c = 1;
int d = 5;

void setup() {
 size (300, 300); 
 background (200, 0 , 100);
}

void draw() {
background (200, 0 , 100);
ellipse (a, b, 150, 150);
fill(0, 0, 225);
if ( a >= 225 || a <= 75)
  {
    c = -c;
  }
  
    if (b >= 225 || b <= 75)
    
  { 
    d = -d;
  }
  
  a = a + c;
  b = b + d;
println ("Hello World.");  
}
