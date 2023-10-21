class Enemigo {
  constructor() {
    this.x = 400;
    this.y = 200;
    this.altura = 200;
    this.ancho = 170;
    this.velocidadX = 0;
    
  }

  mostrar() {
    fill(255, 0, 0);
    rect(this.x, this.y, this.ancho, this.altura);
  }


lanzarObstaculo() {
  if (Date.now() - tiempoUltimoLanzamiento >= 1000) {
    juego.obstaculos.push(new Obstaculo(this.x, this.y));
    
    tiempoUltimoLanzamiento = Date.now();
  }
}

  reiniciar() {
    this.x = 400;
  }
}
