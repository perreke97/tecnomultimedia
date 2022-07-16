void Enemy (){
  //poli1
 
  if (mov<0){
  image (police,polis[0],550,150,200);
  polis[0]=polis[0]-4;
  
  d1 = floor(dist(posX,posY,polis[0],550));
  
  if(d1<50&& d1<100){
  Reinicio();
iniciar=false;
pinte=false;
pinte2=false;
pinte3=false;
}
  else if(polis[0]<0){
    polis[0]=900;
  }
  }
  }
  
  
