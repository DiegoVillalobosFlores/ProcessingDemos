float x, y,dimSX,dimSY;

float dim = 80.0;

void setup() {
  size(640,360);
}

void draw(){
  background(102);
  
  x = x + 0.8;
  
  if(x > width + dim) {
    x = -dim;
  }
  
  dimSX = dim*2;
  dimSY = dim;
  
  translate(x, height/2-dim/2);
  
  fill(204,102,0);
  rect(-dim/2,-dim/2,dimSX,dimSY);
  
  fill(255);
  triangle(-dim/2+dimSX,-dim/2,-dim/2+dimSX,-dim/2+dim,-dim/2+dimSX+dim,-dim/2+dim);
  
  fill(0);
  ellipse(-dim/2+dim/2,dim/2,dim/2,dim/2);
  
  fill(0);
  ellipse(-dim/2+dim*2,dim/2,dim/2,dim/2);
  
}