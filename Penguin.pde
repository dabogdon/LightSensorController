import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int x;
//int z;

void setup(){
  size(400,400);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw(){
  background(195);
  noStroke ();
  x = arduino.analogRead(5);
  //z = arduino.analogRead(11);
  drawPenguin();
  
  //print("penguin complete");
  //noLoop();
}

void drawPenguin(){
  //body
  fill (0);
  ellipse (200, 200, 250, 350);

  fill (255);
  ellipse (200, 245, 210, 250);

  //eyes
  ellipse (185, 80, 60, 60);
  ellipse (215, 80, 60, 60);

  fill (0);
  ellipse (185, 80, 25-x/15, 35-x/15);
  ellipse (215, 80, 25-x/15, 35-x/15);

  //arms
  triangle (80, 170, 40, 275/*-z*/, 90, 215/*-z/2*/);
  triangle (320, 170, 360, 275/*-z*/, 310, 215/*-z/2*/);

  //beak
  fill (255,255,0);
  triangle (200, 150, 190, 110, 210, 110);

  //feet
  ellipse (150, 370, 60, 30);
  ellipse (250, 370, 60, 30);
}
