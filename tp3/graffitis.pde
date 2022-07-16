void grafitis (){
//pinte bomba 1
  
  if (mov<-250&&mov>-1000&&mousePressed&&!pinte) {

    pinte=true;
  }
  if (pinte) {

    image (bombas[0], posBomb1, 500, 150, 150);
   
  }
  println (mov);
  //pinte bomba2
  if (!pinte2&&(mov<-1536)&&mousePressed) {
    pinte2=true;}
     if (pinte2==true){
   image (bombas[1], posBomb2, 500, 150, 150);}
   
   //pinte bomba 3
   if (!pinte3&&(mov<-2763)&&mousePressed){
   pinte3=true;}
   if (pinte3){
     image (bombas[2],posBomb3,500,150,150);
   }
 }
