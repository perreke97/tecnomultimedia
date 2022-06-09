//https://www.youtube.com/watch?v=xIL4xU_cTCk&ab_channel=LuvMufi

int tamE = 0;
int zonaX;

void setup () {
  size (900, 900);
  ellipseMode (CENTER);
}

void draw () {
  elBackground ();
Circulo ();
  Escena () ;

}
void mouseClicked(){
tamE = tamE+10;
}
void mouseDragged () {
  tamE = tamE+2 ;
}

void keyPressed () {
  tamE = tamE-10;
}
