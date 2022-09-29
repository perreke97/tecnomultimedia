//https://youtu.be/cBU0hkHMYlc

Herramientas herramientas;
Pinicial pinicial;
void setup (){
  size (800,400);
 herramientas = new Herramientas ();
 pinicial = new Pinicial();
  pinicial.dibujar();
}
void draw(){
 herramientas.trazos.dibujar();
}
