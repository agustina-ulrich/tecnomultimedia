class Juego {
  constructor() {
    this.jugador = new Jugador();
    this.enemigo = new Enemigo();
    this.obstaculos = [];
    this.vidas = 3;
    this.puntuacion = 0;
    this.obstaculosGenerar = 0;
  }

  actualizar() {
    this.jugador.actualizar();

    if (this.obstaculosGenerar % 60 === 0) {
      this.obstaculos.push(new Obstaculo());
    }
    this.obstaculosGenerar++;

    for (let obstaculo of this.obstaculos) {
      obstaculo.actualizar();

      if (this.jugador.colisiona(obstaculo) && !this.jugador.haSaltado()) {
        this.vidas--;

        if (this.vidas === 0) {
          this.reiniciar();
        } else {
          obstaculo.eliminar();
        }
      }

      if (obstaculo.fueraDePantalla()) {
        this.puntuacion++;
        obstaculo.eliminar();
      }
    }

    this.enemigo.lanzarObstaculo();

    if (this.puntuacion >= 10) {
      pantalla.estado = 'Ganar';
    }
  }


  mostrar() {
    image(imgJugador, this.jugador.x, this.jugador.y, this.jugador.ancho, this.jugador.altura);
    image(imgEnemigo, this.enemigo.x, this.enemigo.y, this.enemigo.ancho, this.enemigo.altura);
    for (let obstaculo of this.obstaculos) {
      image(imgObstaculo, obstaculo.x, obstaculo.y, obstaculo.ancho, obstaculo.altura);
    }



    fill(255);
    textSize(20);
    text("Vidas: " + this.vidas, 10, 30);
    text("Puntuación: " + this.puntuacion, width - 150, 30);
  }

  reiniciar() {
    this.jugador.reiniciar();
    this.enemigo.reiniciar();
    this.obstaculos = [];
    this.vidas = 3;
    this.puntuacion = 0;
    this.obstaculosGenerar = 0;
    pantalla.estado = 'Perder';
  }

  ganarJuego() {
    pantalla.estado = 'Ganar';
    console.log('¡Has ganado!');
  }
}
