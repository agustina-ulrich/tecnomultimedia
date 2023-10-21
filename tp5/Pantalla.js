class Pantalla {
  constructor() {
    this.estado = 'menu'
  }

  mostrar() {
    switch (this.estado) {
    case 'menu':
      this.mostrarMenu();
      break;
    case 'juego':
      this.mostrarJuego();
      break;
    case 'Ganar':
      this.mostrarGanar();
      break;
    case 'Perder':
      this.mostrarPerder();
      break;
    }
  }

  mostrarMenu() {
    image(imgInicio, 0, 0, width, height);
  }

  mostrarJuego() {
    juego.mostrar();
    juego.actualizar();
  }

  mostrarGanar() {
    image(imgFondo, 0, 0, width, height);
    fill(255);
    textSize(32);
    text('Que agil!! Ganaste', width/4, height/2);
    textSize(24);
    text('Presiona "M" para volver al Menú', 120, 300);
  }

  mostrarPerder() {
    image(imgFondo, 0, 0, width, height);
    fill(255);
    textSize(32);
    text('OH NO...no lograste ganarle', width/5, height / 2 );
    textSize(24);
    text('Presiona "M" para volver al Menú', 120, 300);
  }

  keyPressed() {

    switch (this.estado) {
    case 'menu':
      this.teclaMenu();
      break;
    case 'juego':
      this.teclaJuego();
      break;
    case 'Ganar':
    case 'Perder':
      this.teclaFinJuego();
      break;
    }
  }

  teclaMenu() {
    if (key === ' ' || key === ' ') {
      juego.reiniciar();
      this.estado = 'juego';
    }
  } 

  teclaFinJuego() {
    if (key === 'M' || key === 'm') {
      this.estado = 'menu';
    }
  }
}
