//Agustina Ulrich Comision 2
//Profesor Matias 
//TP0 Proyecto Pinguino 

PImage pinguino;

void setup (){
  size(800,400);
  pinguino = loadImage("pinguino (1).jpg"); 
 
    colorMode(RGB);

}

void draw(){
  //funciones a metodo de organizacion
  fondito();
  pingu();
  estrellas();
     image(pinguino,0,0);

}

void fondito(){
          //color del cielo
  background(4,80,151);
 
  //iglu
  fill(210,249,255);
  circle(675,300,220);
  
  //entrada iglu
  circle(675,300,100);
  fill(50);
  circle(675,300,80);
  
  //piso hielo
  fill(239,242,242);
  rect(-1,300,900,200);  
}

void pingu()
{
  //brazos
  fill(20);
  ellipse(500-45,240,17,65);
  ellipse(500+45,240,17,65);

  //cuerpo
  //x,y,ancho,alto
  fill(20);
  ellipse(500,245,88,140);
 
  //cabeza
  fill(20);
  ellipse(500,160,65,70);
  
  //ojos
  fill(255);
  circle(500-10,150,10); //ojo izquierdo
  circle(500+10,150,10); // ojo derecho  
  
  //centro ojo
  fill(0);
  circle(500-10,152,7); //ojo izquierdo
  circle(500+10,152,7); //ojo derecho
  
  fill(255);
  circle(500-10,150,4); //ojo izquierdo
  circle(500+10,150,4); //ojo derecho
  
 //pico
  fill(253,183,5);
  triangle(500,160,528,165,500,170); 
  
   //panza
    fill(244,246,248);
  ellipse(500,245,68,110);
  
  //patitas
  fill(253,183,5);
   circle(500-20,310,20);
   circle(500+20,310,20);
   noStroke();
   
   //moñito
   fill(255,0,0);
   triangle(500,190,500+15,200,500+15,180);
   triangle(500,190,500-15,200,500-15,180);
   circle(500,190,13);
   stroke(0);
}

void estrellas(){
  
  noStroke();
  fill(247,184,14);
//estrella 1 arriba ala izquierda
    triangle(447+5 ,12-3,
             447+15,12-3,
             447+10,30-3);
 
    triangle  (447+5,23-5,
              447+15,23-5,
              447+10,5-5);
              
//estrella 2 arriba del iglu                              
    triangle(600+5,70-3,
             600+15,70-3,
             600+10,103-3);
             
    triangle  (600+5,90-5,
              600+15,90-5,
              600+10,55-5);
              
//estrella 3 abajo a la izquierda                                   
    triangle(409+5*1,228-3,
             409+5*3,228-3,
             409+5*2,258-3);
             
    triangle  (409+5*1,248-5,
               409+5*3,248-5,
               409+5*2,215-5);
               
    stroke(0);
    
  
}
