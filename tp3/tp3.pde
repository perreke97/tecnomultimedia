//profe la verdad que sigo con muchas dudas que no llegue a resolver pero hasta aca llegue 
//y pienso terminarlo espero tener una segunda oportunidad para defender este trabajo

PImage paredes ;
PImage bomb ;
PImage cielo ;
PImage nubes ;
PImage PJ;

PImage xoxo;

int poli ;
int movpj;
int mov ;
int posX ;
int posY = 550 ;
PImage [] bombas;
int cant = 3;
int movC;
int movN;
boolean pinte;

boolean siSalta;
int saltoDireccion;
int topeP = 550;
int topeT = posY - 100 ;


int posBomb1=400 ;
int posBomb2=400 ;


void setup () {
  size (800, 800);
  Reinicio ();

  imagenes();

  bombas = new PImage [cant];
  bombas[0] = loadImage ("xoxo.png");
  bombas[1] = loadImage ("xoxo.png");
  bombas[2] = loadImage ("xoxo.png");
}
void draw () {

  PJ = loadImage ("pj_"+ (movpj)+".png" );

  background (200);


  image (cielo, movC, 0);
  image (nubes, movN, 0);
  image (paredes, mov, 200);
  //pinte bomba 1
  if (mov<-250&&mov>-500&&mousePressed&&!pinte) {

    pinte=true;
  }
  if (pinte) {

    image (bombas[0], posBomb1, 500, 90, 90);
  }

  //pinto bomba 2

  if (mov<-1500&&mov>-2000&&mousePressed&&pinte==true) {

    image (bombas[1], posBomb2, 500, 90, 90);
  
    if (mov<-3000) {
      pinte=false;
    }}

    image (PJ, posX, posY, 70, 190);



    if (cant==2) {
      cant=0;
    }

    if (movpj>7) {
      movpj=0;
    }
    if (movpj<1) {
      movpj= movpj+1;
    }

    if (movpj>10) {
      movpj=0;
    }



    if (mousePressed ==true) {

      movpj= 10;
    }
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
      posY--;
    } else if (siSalta && saltoDireccion == -1) {
      posY++;
    }
    if (siSalta==true) {
      movpj = 15;
    }

    if (keyPressed && keyCode == RIGHT && !siSalta) {
      movpj=movpj+1;
      mov= mov-3;
      posX= posX+3;
      movC= movC-2;
      movN=movN-5;
      if (pinte) {
        posBomb1=posBomb1-3;
        if (mov<-1400) {
          posBomb2=posBomb2-3;
        }
      }

      if (posX >= 400) {
        posX=400;
      }
    } else if (keyPressed && keyCode == LEFT && !siSalta) {
      movpj=movpj-1;
      mov = mov+3 ;
      movN= movN+2;
      movC= movC+1;
      posX = posX-3;
    }

      if (pinte) { 
        posBomb1=posBomb1+3;
      }

      if (posX<10) {
        posX=10;
      }
    }
