void setup(){
 size (500,500);
 background(250);
 
 strokeWeight (20);
 
 //rojo purpura
 stroke(#b12d44);
line(250,250,125,0);
 
 //rojo
 stroke (#e31e24);
line (250,250,250,0);

//rojo naranja
stroke (#eb5f32);
line(250,250,375,0);

//naranja
stroke(#f39329);
line(250,250,500,125);

//amarillo naranja
stroke (#fcc30d);
line(250,250,500,250);

//amarillo
stroke (#ffed00);
line(250,250,500,375);

//verde amarillo
stroke(#b2b745);
line(250,250,375,500);

//verde
stroke (#528a61);
line(250,250,250,500);

//azul verde
stroke(#137e93);
line(250,250,125,500);

//azul
stroke (#0072ba);
line(250,250,0,375);

//azul purpura
stroke(#4c5684);
line(250,250,0,250);

//purpura
stroke (#763455);
line(250,250,0,125); 

ellipseMode(CENTER);
strokeWeight(250);
stroke(0);
noFill ();
ellipse(250,250,490,490);

fill(250);
noStroke ();

ellipse(250,250,150,150);

stroke(250);
noFill();
ellipse(250,250,500,500);


}
