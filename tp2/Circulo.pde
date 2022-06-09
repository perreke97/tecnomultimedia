void Circulo (){
  noStroke ();
  if ( tamE>1 && tamE<150) {
    fill (255, 50, random(0, 255), 150);
    ellipse (mouseX, mouseY, (tamE+100), (tamE+100));
    ellipse (mouseX, mouseY, (tamE+50), (tamE+50));
    fill (255, 150);
    ellipse (mouseX, mouseY, tamE, tamE);
  } else if ( tamE>150 ) {
    tamE=0;
  }
  if (tamE<0) {
    tamE=0;
  }
}
