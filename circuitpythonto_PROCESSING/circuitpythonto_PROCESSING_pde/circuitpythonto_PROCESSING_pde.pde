import processing.serial.*;
Serial myPort = new Serial(this, Serial.list()[1], 9600);
float angle = 0;
float red = 0;
float green = 255;
float blue = 0;
void setup() 
{
     println("Available serial ports:");
     printArray(Serial.list());
     size (600, 600);    
}

void draw() {
  //print(myPort.available());
    if (myPort.available() > 0) { 
      int myNum = myPort.read();
      // converts the UART data to an integer
       background (0, 0, 0);
      // colors the screen black
      angle = map (myNum, 0, 255, 0, 3.9508043048);
      // converts the potentiometer value to angle (just over a semicircle)
      if (angle < 1.9754021524) {
        red = 0;
        green = map (angle, 0, 1.9754021524, 255, 0);
        blue = map (angle, 0, 1.9754021524, 0, 255);
        // when the angle is 0 the circle is fully green...transitions to fully blue by the halfway point...
      }
      if (angle > 1.9754021524) {
        red = map (angle, 1.9754021524, 3.9508043048, 0, 255);
        green = 0;
        blue = map (angle, 1.9754021524, 3.9508043048, 255, 0);
        //...and then to fully red at the end
      }
      ellipse(300, 300, 300, 300);
      fill(red, green, blue);
      // colors the circle
      translate(300, 300);
      // moves the origin to the center of the screen
      rotate (angle);
      // rotates the starting point of the line based on the angle
      stroke(0, 0, 0);
      // line colored black
      line(0, 0, -141.421356237, 50);
      println(myNum);
    }
    }
