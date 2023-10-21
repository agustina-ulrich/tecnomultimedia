//Agustina Ulrich 
//Comision 2
//tp5
//https://youtu.be/wdNz1cqkUMU

let juego;
let imgJugador, imgEnemigo, imgObstaculo, imgFondo, imgInicio;
let pantalla;
let tiempoUltimoLanzamiento = Date.now();

function preload() {
  imgJugador = loadImage('gato.jpg');
  imgEnemigo = loadImage('gigante.PNG');
  imgObstaculo = loadImage('gota.PNG');
  imgFondo = loadImage('fondito.png');
  imgInicio = loadImage('inicio.png');
}

function setup() {
  createCanvas(600, 400);
  juego = new Juego();
  pantalla = new Pantalla();
}

function draw() {
  image(imgFondo, 0, 0, width, height);
  pantalla.mostrar();
}

function keyPressed() {
  if (keyCode === UP_ARROW) {
    juego.jugador.saltar();
  }
  pantalla.keyPressed();
}
