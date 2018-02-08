color current;

void setup(){
  size(640,480);
  background(255);
  current = #000000;
  frame.setTitle("color: Negro, use los números para cmabiar el color, presione 'c' para borrar la pantalla");
}

void draw(){
  stroke(current);
  
  if(mousePressed){
    fill(current);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}

void keyPressed(){
  switch (key){
    case '0': 
      frame.setTitle("color: Negro");
      current = #000000;
      break;
    case '1':
      frame.setTitle("color: Rojo");
      current = #f44242;
      break;
    case '2':
      frame.setTitle("color: Verde");
      current = #59f441;
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
      break;
  }
}