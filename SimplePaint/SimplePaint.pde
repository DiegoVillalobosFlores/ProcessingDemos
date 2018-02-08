color current;

//botones
int posX, posY;
int squareX,squareY;
int circleX,circleY;
int lineX,lineY;
int blackX, blackY;
int size = 90;
int tool = 0;

//color macros
color red = #f44242;
color green = #59f441;
color blue = #1a47ed;

//press
int oX,oY;
int tS = 50;
boolean pressed = false;

void setup(){
  size(1920,1080);
  background(255);
  current = #000000;
  frame.setTitle("color: Negro, use los números para cambiar el color, presione 'c' para borrar la pantalla");
  
  posX = 50;
  posY = 20;
  
  squareX = posX;
  squareY = posY;
  
  circleX = posX;
  circleY = posY + size + 30;
  
  lineX = posX;
  lineY = posY + size*2 + 60;
  
  blackX = posX;
  blackY = posY + size*3 + 90;
  
}

void draw(){
  noStroke();
  fill(#f44242);
  rect(squareX,squareY,size,size,7);
  //rect(squareX+size/6,squareY+size/6,size- size/3,size - size/3);
  noStroke();
  fill(#59f441);
  rect(circleX,circleY,size,size,7);
  //ellipse(circleX + size/2,circleY+size/2,size - size/6,size -size/6);
  noStroke();
  fill(#1a47ed);
  rect(lineX,lineY,size,size,7);
  //black
  noStroke();
  fill(#000000);
  rect(blackX,blackY,size,size,7);
  //stroke(current);
  //line(lineX+size/6,lineY+size/6,lineX+size - size/6,lineY+size - size/6);
  if(mousePressed){
    stroke(current);
    switch (tool) {
      case 0:
        line(mouseX,mouseY,pmouseX,pmouseY);
        break;
      case 1:
        fill(current);
        rect(mouseX,mouseY,tS,tS);
        break;
      case 2:
        fill(current);
        ellipse(mouseX,mouseY,tS,tS);
        break;
    }
  }
}

void mousePressed(){
  current = toolPressed();
}

color toolPressed(){
  if(mouseX >= squareX && mouseX <= squareX+size &&
      mouseY >= squareY && mouseY <= squareY +size){
        return red;
      }
  if(mouseX >= circleX && mouseX <= circleX+size &&
      mouseY >= circleY && mouseY <= circleY +size){
        return green;
      }
  if(mouseX >= lineX && mouseX <= lineX+size &&
      mouseY >= lineY && mouseY <= lineY +size){
        return blue;
      }
  if(mouseX >= blackX && mouseX <= blackX+size &&
      mouseY >= blackY && mouseY <= blackY +size){
        return #000000;
      }
  
  return current;
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void keyPressed(){
  switch (key){
    case '0': 
      frame.setTitle("Herramienta: Linea");
      tool = 0;
      break;
    case '1':
      frame.setTitle("Herramienta: Cuadro");
      tool = 1;
      break;
    case '2':
      frame.setTitle("Herramienta: Circulo");
      tool = 2;
      break;
    case '3':
      frame.setTitle("color: Azul");
      current = #1a47ed;
      break;
    case '4':
      frame.setTitle("color: Amarillo");
      current = #fff242;
      break;
    case '5':
      frame.setTitle("color: Purpura");
      current = #ee3dff;
      break;
    case '6':
      frame.setTitle("color: Celeste");
      current = #3debff;
      break;
    case '7':
      frame.setTitle("color: Naranja");
      current = #ffc83d;
      break;
    case '8':
      frame.setTitle("color: Aquamarina");
      current = #3dff9e;
      break;
    case '9':
      frame.setTitle("color: Indigo");
      current = #19528c;
      break;
    case 'c':
      background(255);
      current = #000000;
      frame.setTitle("color: Negro, use los números para cambiar el color, presione 'c' para borrar la pantalla");
      break;
  }
}