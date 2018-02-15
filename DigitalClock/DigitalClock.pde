int h,m,s;
String pm;

int H = 420;
int W = 240;

int size = 60;

void setup(){
  size(420,240);
}

void draw(){
  background(0);
  
  s = second();
  m = minute();
  h = hour();
  
  if(h > 11){
    h = h-11;
    pm = "PM";
  }else{
    pm = "AM";
  }
  
  fill(#47aa19);
  text(h+":"+m+":"+s + " " + pm, (H / 2)-size*3, W / 2);
  textSize(size);
}