//Agustina Ulrich Tp4
//https://youtu.be/YXMvI36IRsI
let tiempo;
let miFuente;
let velocidadEnemigo = 8;
let estado = 0 ;

//jugador
let xP;
let yP;
let rP;
let velYP;
let piso;
let animacionjugador =0;
let maxAnim = 3;

//enemigo
let y1;
let x1;
let huevo;
let imagenFinal;
let animacionEnemigo =0;
let maxAnimEnemigo= 3;

function setup() {

  createCanvas(800, 400);
  tiempo = 0;
  piso = 300;
  rP = 20;
  xP = width*0.10;
  yP = piso-rP;
  velYP = 0;
  x1 = 800;
  y1 = 275;
  miFuente = loadFont('data/Cinzel-VariableFont_wght.ttf');
  textFont(miFuente);
  imagenGallina0 = loadImage('data/gallina.png');
  imagenGallina1 = loadImage('data/gallina0.png');
  imagenFuego0 = loadImage('data/fuego.png');
  imagenFuego1 = loadImage('data/fuego0.png');
  imagenFuego2 = loadImage('data/fuego1.png');
  imagenFinal = loadImage ('data/gallinaquemada.png');
  huevo = loadImage ('data/huevobboton.png');
}


function draw() {
  background(229, 130, 45);

  if ( estado == 0 ) {
    textSize(30);
    tiempo = 0;
    yP = piso-rP;
    x1 = 800;
    y1 = 275;
    velocidadEnemigo = 8;
    text( "A correr!!", 320, 370 );
    textSize(15);
    text( "Una gallina aventurera se encuentra en peligro por el incendio, ayudala a saltar las llamas", 10, 80);
    boton();
    fill (170);
    ellipse(100, 300, 100);
    fill(0);
    text("CREDITOS", 62, 310);
  } else if ( estado == 1 ) {
    textSize(20);
    text( "Saltá", 100, 100 );
    contador();
    dibujarPiso();
    dibujarEnemigo();
    dibujarJugador();
  }

  // colision
  if ( estado == 1 && dist(x1, y1, xP, yP) < 50 ) {
    estado = 2;
  }

  if ( tiempo >= 115 ) {
    estado = 3;
  }

  if ( estado == 2 ) {
    push();
    textSize(20);
    textAlign(CENTER, CENTER);
    background(170);
    text( "Oh noo..la gallina sufrio de fuertes quemaduras, debiste saltar mas :(", width/2, 40 );
    image (imagenFinal, 300, 70);
    imagenFinal.resize(200, 200);
    fill(255);
    ellipse(400, 330, 100);
    fill(0);
    text("RESET", 400, 330);
    pop();
  }

  push();
  if ( estado == 3 ) {
    textSize(20);
    background(170);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Lograste salvar a la gallina :)", width/2, height/3 );
    fill(255);
    ellipse(width/2, 300, 100);
    fill(0);
    text("RESET", width/2, 300);
  }
  pop();

  if ( estado == 4 ) {
    fill(0);
    background(170);
    textSize(20);
    text("TP4 - Ulrich Agustina", 280, 150);
    text("Produccion: Agustina Ulrich ", 50, 250);
    text("Programadora:Ulrich Agustina ", 400, 250);
    text("Gracias por ver, toca para reiniciar",200, 300);
     ellipse(width/2, 350, 50);
    fill(0);
   
  }
}








function mousePressed() {

  if ( dist(width/2, height/2, mouseX, mouseY) < 50 ) {
    estado =1;
  }

  if ( estado == 3 && dist(width/2, 300, mouseX, mouseY) < 100/2) {
    estado = 0;
  }

  if ( estado == 2 && dist(400, 330, mouseX, mouseY) < 100/2) {
    estado = 0;
  }

  if ( estado == 0 && dist( 100, 300, mouseX, mouseY) < 100/2) {
    estado = 4;
  }
  if ( estado == 4 && dist( width/2, 350, mouseX, mouseY) < 50/2) {
    estado = 0;
  }
}
