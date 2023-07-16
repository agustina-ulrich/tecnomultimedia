boolean zonaCircular (int x, int y, int r) {
  return dist (mouseX, mouseY, x, y) <= r ;
}



void boton (int x, int y, int d) {


  if (dist(mouseX, mouseY, x, y) <= d) {
    fill (220, 137, 77);
  } else {
    fill(231, 203, 154);
  }

  circle (x, y, d);
}



void botonCuadrado() {
  textSize(40);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(220, 137, 77);
  } else {
    fill(88, 42, 3);
  }
  rect(210, 270, 180, 50);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(150);
  } else {
    fill(200);
  }
  textSize(26);
  fill(255);
  text("REINICIAR", 300, 295);
}


void flecha() {
  fill (142, 88, 44);
  strokeWeight(5);
  stroke(142, 88, 44);
  line(520, 510, 545, 530);
  line(520, 550, 545, 530);
}
