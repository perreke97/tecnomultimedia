class Trazos {
  boolean estoyDibujando = false;
  PImage lapiz;
  PImage pincel;
  PImage goma;
  PImage rojo;
  PImage verde;
  PImage azul;
  int mX, mX2;
  int Color;

  int Stroke ;

  void dibujar () {
    
    lapiz = loadImage ("Lapiz.jpg");
    pincel=loadImage("Pincel.jpg");
     goma=loadImage("Goma.jpg");
     rojo=loadImage("Rojo.jpg");
     verde=loadImage("Verde.jpg");
     azul=loadImage("Azul.jpg");
    image (lapiz, 0, 0, 50, 100);
    image (pincel, 0, 100, 50, 100);
    image(goma,0,200,50,100);
    
    //zana roja
    fill(250,0,0);
    image (rojo,0,300,50,33);
    //zona verde
    fill(0,255,0);
    image (verde,0,333,50,33);
    //zona azul
    fill(0,0,255);
    image (azul,0,366,50,33);
    if (mousePressed) {
      estoyDibujando=!estoyDibujando;
    }

    if (estoyDibujando==true) {
      strokeWeight (Stroke);
      line (mouseX+mX, mouseY, mouseX+mX2, mouseY);
    }
    if (mouseX<50)
      estoyDibujando =false;

    //lapiz
    if ((mouseX<50)&&(mouseY<100)&&(mousePressed)) {
      fill (Color);
      Color=0;
      Stroke=5;
      mX=(0);
      mX2=(0);
      stroke(0);
    }
    //pincel
    if ((mouseX<50)&&(mouseY>100)&&(mouseY<200)&&(mousePressed)) {
      mX=(-10);
      mX2=(10);
      Stroke=5;
      stroke (0);
    }
    //goma
    if ((mouseX<50)&&(mouseY>200)&&(mouseY<300)&&(mousePressed))
   
    {
      Stroke=20;
      stroke(255);
    }
    //COLORES
    //Rojo
     if ((mouseX<50)&&(mouseY>300)&&(mouseY<333)&&(mousePressed)){
     stroke(255,0,0);}
     //verde
     if ((mouseX<50)&&(mouseY>333)&&(mouseY<366)&&(mousePressed)){
     stroke(0,255,0);}
     //azul
     if ((mouseX<50)&&(mouseY>366)&&(mouseY<400)&&(mousePressed))
    {stroke(0,0,255);}
    
    
  }
}
