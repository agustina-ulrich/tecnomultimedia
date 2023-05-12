//Agustina Ulrich Comision 2
//TP1

String titulo1 = "¡¡BIENVENIDOS AL HIMALAYA!!";
PFont fuente;
boolean movimiento1; 
int x = 320;
int y = 100;
PImage yeti;
int estado;
int contador;
PImage foto1,foto2,foto3,foto4,foto5,foto6;
float textTamaño, textMovX,textoMovX2, textMovY, textoMovY2;
int segundos;


void setup() {
      size(640,480);
      textAlign(CENTER,CENTER);
      fuente = loadFont("ErasITC-Medium-40.vlw");
      movimiento1 = true;
      yeti = loadImage ("yeti1 (1).jpg");
      estado = 0;
      textSize( 50 );
      fill(0);
      estado = 0;
      foto1 = loadImage("foto1.png");
      foto2 = loadImage("foto2.jpg");
      foto3 =loadImage("foto3.jpg");
      foto4 =loadImage("foto4.jpg");
      foto5 =loadImage("foto5.jpg");
      foto6 = loadImage("tiernos.jpg");
      fuente = loadFont ("BodoniMT-Bold-20.vlw");
      textMovX = 0;
      textoMovX2 = 0;
      textMovY= 0;
      textoMovY2 = 0;
      textTamaño = 0;
      segundos = 7000;
}

void draw(){
  fondo1();
  texto1();
  boton();
  diapositivas();
}

void fondo1(){
   background(165,215,238);
   fill(255);
   textSize(15);
   text("Presiona la puerta para ver!!", 475,270);
   image(yeti,90,230);
    //iglu
  fill(210,249,255);
  circle(475,400,220);

  //entrada iglu
  circle(475,400,100);
  
  //boton
    fill(50);
  circle (475,400,80);
  
  //piso hielo
  fill(239,242,242);
  rect(-1,400,900,100); 
  
  
}

void texto1(){
  textFont( fuente);
  text(titulo1,x,y);
  fill(82,199,242);
  if (x >= 400){
  movimiento1 = false;
}
  if (x<= 250){
  movimiento1 = true;
}
  if (movimiento1){
  x = x + 1;
}
  else {
  x = x - 1;
}
}

void boton(){ //hay una parte del boton dentro del void fondo para que quede como la puerta del iglu
  if(estado== 0 ){
  if( mousePressed ) {
   if( dist(475,400, mouseX, mouseY) < 80/2 ){
   fill(0);
   circle (475,400,80);
   estado = 1;
    }
  }
  }
}

void diapositivas(){
  textFont (fuente);
  int diftiempo = millis() - contador;
  
   if( estado == 1 ){  
   image(foto1,0,0);
    fill(255);
    textTamaño = textTamaño + 0.2;
   
   
   if (textTamaño >= 20) {
     textTamaño = 20;
   }
    textSize(textTamaño);
    text( "EL OSO POLAR \n \n \n Es un mamifero que se caracteriza por su \n pelaje blanco y  su perfil mucho mas alargados\n  que el resto de los osos. \n Se clasifican como mamiferos marinos \n por pasar la mayor parte de su \n vida en el hielo marino", 220,170 );
 
    if( diftiempo >= segundos ){  
      estado = 2;
      contador = millis();
      textTamaño = 0;
    }
    
  }else if (estado == 2 ){
      textMovX = textMovX + 1.50;
      
if (textMovX >= width/2) {
  textMovX = width/2;
}

    image(foto2, 0, 0 ); 
        fill(255);
    textSize (30);
    text("HABITAT",textMovX,150);
    textSize(20);
    text(" Estos se desarrollan en las zonas articas, donde las temperaturas \n de su oceano van desde los -50° C en invierno hasta los 0° \n en verano, de modo que los osos polares son capaces \n de resistir esas bajas temperaturas",textMovX,height/2) ;
  textAlign(CENTER,CENTER);
  
    if( diftiempo >=segundos){ 
      estado = 3;
      contador = millis();  
      textMovX = 0;
    }   
    
  }else if (estado == 3 ){
    textMovY = textMovY +1;

    
    if (textMovY >= 100) {
      textMovY =100;
        
    }
   image(foto3,0, 0 );  
  fill(255);
 textSize(17);
    text( "ALIMENTACION \n \n Poseen una dieta exclusivamente \n carnivora. Suelen cazar crias\n y adultos de otros mamiferos \n marinos,como focas y belugas.\n Tambien suelen alimentarse de peces,\n crias o huevos de aves, incluso\n de sobrantes de las colonias humanas.",460,textMovY);
   
    if( diftiempo >= segundos ){
      estado = 4;
      contador = millis();      
    }   
    
  }else if (estado == 4 ){
 textoMovX2 =textoMovX2 + 1.70;
    
    if(textoMovX2 >= 176){
      textoMovX2 = 176;
    }
    image(foto4,0,0 ); 
        fill(255);
    textSize(20);
    text( "¿SABIAS QUE? \n\n Tienen la mordida mas fuerte del mundo,\n incluso mas fuerte que la de un\n tiburon blanco, el tigre de Bengala\n o el leon Africano",textoMovX2,120);
    if( diftiempo >= segundos ){  
      estado = 5;
      contador = millis();
    } 
     
    }else if (estado == 5 ){   
     textoMovY2 =  textoMovY2 +1;

    if (textoMovY2 >= 80) {
      textoMovY2 =80;
        
    }
    image(foto5, 0, 0 ); 
    fill(255);
    text( "Y ademas...\n Son excelentes\n publicistas!!",340, textoMovY2);
    if( diftiempo >= segundos ){ 
      estado = 6;
      contador = millis();      
    }      
      
    }
  
    if(estado==6){
image(foto6,0,0);
fill(255);
textSize(30);
text("Gracias por ver!!",130,80);
fill(255);
textSize(15);
text("volve a empezar :)", 550,110);
     fill(94,107,57);
      circle (550,60,60);
     stroke(255);
  if( mousePressed ) {
   if( dist(550,60, mouseX, mouseY) < 60/2 ){
    fill(94,107,57);
      circle (550,60,60);
   estado = 0;
   contador = millis ();
    }
  }
  }
  
  println( millis() + " - " + contador + " = " + diftiempo );
}
