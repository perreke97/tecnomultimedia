//https://youtu.be/pRYGjqbhgoI

PImage paredes ;
PImage bomb ;
PImage cielo ;
PImage nubes ;
PImage PJ;

PImage xoxo;
int posP=900;
int poli ;
int movpj;
int mov ;
float posX ;
float posY = 550 ;
PImage [] bombas;
PImage police;
PImage winner;
PImage inicio;
int [] polis ;
int cant = 3;
int movC;
int movN;
boolean pinte;
boolean pinte2;
boolean pinte3;

boolean siSalta;
int saltoDireccion;
int topeP = 550;
float topeT = posY - 100 ;
float d1;
float d2;
int posBomb1=400 ;
int posBomb2=400;
int posBomb3=400;
boolean iniciar=false;




void setup () {
  size (800, 800);
  inicio= loadImage ("inicio.jpg");
  Reinicio ();

  imagenes();
//Enemy ();
  bombas = new PImage [cant];
  bombas[0] = loadImage ("xoxo.png");
  bombas[1] = loadImage ("xoxo_3.png");
  bombas[2] = loadImage ("xoxo_2.png");
  
  
  
 
  
  
  
}
void draw () {
  if (keyCode=='J'){
  iniciar =true;}
if (iniciar){
  

  PJ = loadImage ("pj_"+ (movpj)+".png" );
dibujarFondo(random (0,2));
  
  grafitis();
  
 

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
  Salto();
 
  Enemy();
  frames();
  if (mov<3255&&(pinte&&pinte2&&pinte3)==true)
image (winner,  0,0 , 800,800);
  
}
}
void keyPressed () {
  eventoTeclas();
  
  
} 

  
  


 
