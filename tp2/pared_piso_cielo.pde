void Escena (){
  stroke (5);
  strokeWeight (1);
for (int i=0; i<10 ; i++){
    
    line (0,(i*100),mouseX,mouseY);
    line (900,(i*100),mouseX,mouseY);
   
}
fill(255);
triangle (0,0,900,0,mouseX,mouseY);

fill(0);
triangle(0,900,mouseX,mouseY,900,900);
}
