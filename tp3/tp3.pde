PImage paredes ;
PImage bomb ;
int mov ;
int pj ;
int gravedad ;
int [] bombas;
int cant;

void setup () {
  size (800, 800);
  paredes = loadImage ("paredes.png");
  mov = 0;
  pj = 150;
  gravedad = 650 ;
  bomb = loadImage ("bomb.png");
  cant=5;
  

  int [] bombas = new int[cant];
  bombas[0] = 600;
  bombas[1] = 1000; 
  bombas[2] = 1810; 
  bombas[3] = 2300;
  bombas[4] = 3200;
}

void draw () {
  background (200);
  image (paredes, mov, 200);
  rect (pj, gravedad, 20, 60);

  if (gravedad <= 645 && gravedad>600 ) {
    gravedad = gravedad-1;
  } 
  if (gravedad == 600) {
    gravedad = 650 ;
  }
  if (mousePressed== true ) {
    image (bomb, pj, 630);
  }
  for (int i=0; i<cant; i++){
   image (bomb,bombas[i],650);}

}

void keyPressed () {
  if (keyCode == RIGHT) {
    mov= mov-3;
    pj= pj+3;
    if (pj >= 400) {
      pj=400;
    }
  } else if (keyCode == LEFT) {
    mov = mov+3 ;
    pj = pj-3;
    if (pj<10) {
      pj=10;
    }


    if (keyCode == UP ) {
      gravedad = gravedad-5;
    }
  }
}
