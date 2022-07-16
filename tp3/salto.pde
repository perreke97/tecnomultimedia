 void Salto(){
 
 if (keyPressed&&keyCode == UP && !siSalta ) {
    siSalta=true;
    saltoDireccion =1;
    posY--;
  } else if (siSalta && saltoDireccion == 1 && posY < topeT) {
    saltoDireccion= -1;
  } else if (
    siSalta && 
    saltoDireccion == -1 &&
    posY > topeP) {
    saltoDireccion = 0;
    siSalta = false;
  } else if (siSalta && saltoDireccion == 1) {
    posY=posY-3;
  } else if (siSalta && saltoDireccion == -1) {
    posY=posY+2;
  }
  if (siSalta==true) {
    movpj = 15;
  }
 }
