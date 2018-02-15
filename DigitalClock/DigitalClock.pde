int h,m,s;
int day, mon, year;
String pm;
color dark;

int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

int H = 420;
int W = 420;

int size = 60;

void setup(){
  size(420,420);
  
  stroke(255);
  
  int radius = min(width, height) / 3;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  cx = width / 2;
  cy = height / 2;
  
}

void draw(){
  
  
  s = second();
  m = minute();
  h = hour();
  
  day = day();
  mon = month();
  year = year();
  
  if(h > 11){
    h = h-11;
    pm = "PM";
    dark = 0;
  }else{
    pm = "AM";
    dark = 255;
  }
  
  background(dark);
  
  fill(#47aa19);
  text(h+":"+m+":"+s + " " + pm, (H / 2)-size*3, size);
  textSize(size);
  text(day + "/" + mon + "/" + year,(H / 2)-size*3,W-(size/2));
  
  // Draw the clock background
  fill(dark);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Draw the hands of the clock
  stroke(#47aa19);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  // Draw the minute ticks
  strokeWeight(4);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape();
  
  
  
  
}