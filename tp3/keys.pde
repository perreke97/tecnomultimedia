void eventoTeclas () {

  if (keyPressed && keyCode == RIGHT && !siSalta) {
    //movpj++;
    mov= mov-3;
    posX= posX+3;
    movC= movC-2;
    movN=movN-5;
    if (pinte) {
      posBomb1=posBomb1-3;}
      if (pinte2) {
        posBomb2=posBomb2-3;
      }
      if(pinte3){
      posBomb3=posBomb3-3;
    }
    

    if (posX >= 400) {
      posX=400;
    }
  } /*else if (keyPressed && keyCode == LEFT && !siSalta) {
    movpj=movpj-1;
    mov = mov+3 ;
    movN= movN+2;
    movC= movC+1;
    posX = posX-3;

    if (pinte) { 
      posBomb1=posBomb1+3;
    }

    if (posX<10) {
      posX=10;
    }
  }*/
}
