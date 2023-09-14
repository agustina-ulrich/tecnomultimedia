function keyPressed() {
  saltar();
}


function  saltar() {


  if ( yP>piso-rP-5) {
    velYP = -8;
  }
}

function boton() {


  circle( width/2, height/2, 100, 100 );
  image(huevo, 300, 100);
  huevo.resize(200, 200);
 
}

function contador() {
  textSize (20);
  text(tiempo, width - 100, 40);

  if (frameCount%10 == 0) {
    tiempo++;
  }
}

function dibujarEnemigo() {

  if (x1 < -10) {
    x1 = 820
      velocidadEnemigo += 0.5;
  } else {
    x1 = x1 - velocidadEnemigo;
  }

  push();


  if (animacionEnemigo < maxAnimEnemigo) {
    image(imagenFuego0, x1 - rP, y1 - rP, rP*4, rP*4);
  } else if (animacionEnemigo >= maxAnimEnemigo && animacionEnemigo < maxAnimEnemigo*2) {
    image(imagenFuego1, x1 - rP, y1 - rP, rP*4, rP*4);
  } else {
    image(imagenFuego2, x1 - rP, y1 - rP, rP*4, rP*4);
  }

  if (animacionEnemigo>maxAnimEnemigo*3) {
    animacionEnemigo =0;
    image(imagenFuego0, x1 - rP, y1 - rP, rP*4, rP*4);
  }

  animacionEnemigo++;


  pop();
}
function dibujarJugador() {


  if (animacionjugador < maxAnim) {
    image(imagenGallina0, xP - rP, yP - rP, rP*4, rP*4);
  } else if (animacionjugador >= maxAnim) {
    image(imagenGallina1, xP - rP, yP - rP, rP*4, rP*4);
  }

  if (animacionjugador>=maxAnim*2) {
    animacionjugador =0;
    image(imagenGallina0, xP - rP, yP - rP, rP*4, rP*4);
  }

  animacionjugador++;

  yP+=velYP;

  if (yP+rP<piso) {
   
    velYP+=0.27;
  } else {
    velYP=+(velYP*0.35);
    yP=piso-rP;
  }
}

function dibujarPiso() {
  strokeWeight(2);
  line(0, piso, width, piso);
  fill(255);
}
