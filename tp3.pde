//Agustina Ulrich
//Comision 2
//tp3
//https://youtu.be/lTO-otr22Lk
//Me falto aclarar que al final cambie unas cosas del primer diagrama que entregue :)
int estado = 0;
int c = 24;
PImage sombra;
PImage [] gato = new PImage [c];
String [] historia = new String [c];
PFont fuente;
float y;
void setup () {
  size (600, 600);

  for (int i = 0; i < c; i++) {
    gato[i] = loadImage ( "gato" + i + ".png" ) ;
  }


  sombra = loadImage ("sombra.png");

  textSize (25);
  textAlign(CENTER, CENTER);
  fuente = loadFont("BookAntiqua-20.vlw");

  historia[0]="El gato\n con botas";
  historia[1]="Ramon habia recibido por su cumpleaños un gato el cual parecia muy aburrido";
  historia[2]="No tardo en darse cuenta que aquel gato era uno muy especial porque podia hablar y prometio  ayudarlo a conseguir esposa";
  historia[3]="El gato tenia ideas muy locas \n pero ramon las seguia sin dudar.\nLe ofrecio elegir entre dos planes..";
  historia[4]="La primera parte de\n su plan fue hacer \n que ramon se tire al agua de \n un rio sin ropa y al \n pasar la carroza real \npedirles ayuda";
  historia[5]="El rey  lo ayudo sin dudar\n  y al verlo desnudo \n le dio ropa nueva";
  historia[6]="La princesa, quien estaba en la carroza,\n  hablo todo el viaje hacia el castillo de ramon";
  historia[7]="A pesar de no tener tal castillo,\n el gato le djo que no se preocupara \nque el arreglaria eso.\n ¿Ira por la puerta A o B?";
  historia[8]="Fue hacia el castillo \nde un gigante, quien vivia \nsolo y era magico ";
  historia[9]="El gato con botas lo habia retado a una pelea,\n la cual casi sale herido porque el gigante\n se habia convertido en un\n leon y estaba furioso";
  historia[10]="Pero este felino era muy inteligente y\n le dijo que si era tan valiente para hacerse\n leon que entonces se transforme en una raton \nY asi fue que con su audacia pudo atrapar\n y comerse al gigante";
  historia[11]="Al llegar el rey y ramon se encontraron \ncon el castillo y un gran festin\n que les habia preparado el gato";
  historia[12]="Finalmente la princesa y ramon se casaron";
  historia[13]="Su plan era llevarle una ofrenda \nal rey para ser amigos";
  historia[14]="Dispuesto a eso, estuvo toda \nla tarde esperando hasta que\n pudo cazar un conejo";
  historia[15]="Se lo entrego al rey, el cual estaba \nsorprendido por este gato tan \nespecial y lo acepto sin dudar";
  historia[16]="Lamentablemente ese conejo estaba enfermo\n y el rey se intoxico El gato con botas \nno pudo pisar mas el reino y tuvieron que mudarse con ramon";
  historia[17]="Cayo por un pozo magico, asustado de \n no saber lo que le iba a suceder";
  historia[18]="Abrio los ojos y \nestaba el.... pero distinto\n y no era ÉL mismo";
  historia[19]="Uuuuh...";
  historia[20]="El gato con botas habia \ncaido en un universo donde vivia \notro gato con botas pero con \ndiferente estilo";
  historia[21]="Aquel le mostro un poco de quienes vivian alli \ny que podian haber minis gatos con botas";
  historia[22]="Finalmente le hizo un recorrido por aquel mundo";
}
void draw() {
  textFont(fuente);
  fill(255);
  tint(150);

  switch (estado) {
  case 0:
    tint(150);
    image (gato [0], 0, 0 );
    textSize(40);
    text(historia[0], 170, 200);
    boton (530, 530, 70);
    flecha();
    break ;

  case 1:

    image (gato[1], 0, 0 );
    text(historia[1], 100, 20, 400, 60);
    boton (530, 530, 70);
    flecha();
    break;

  case 2:
    image (gato[2], 0, 0 );
    text(historia[2], 70, 190, 300, 250);

    boton (530, 530, 70);
    flecha();
    break ;

  case 3:
    image (gato[3], 0, 0 );
    text(historia[3], 200, 530);
    boton (530, 530, 70);
    boton (420, 530, 70);
    textSize(30);
    fill(255);
    text("B", 532, 530);
    text("A", 419, 530);

    break;

  case 4:
    image (gato [4], 0, 0 );
    text(historia[4], 420, 290);
    boton (530, 530, 70);
    flecha();
    break ;

  case 5:
    image (gato[5], 0, 0 );
    text(historia[5], 450, 270);
    boton (530, 530, 70);
    flecha();
    break;

  case 6:
    image(gato[6], 0, 0);
    text(historia[6], 220, 450);
    boton (530, 530, 70);
    flecha();
    break;

  case 7:
    image(gato[7], 0, 0);
    text(historia[7], 410, 470);
    boton (300, 230, 70);
    boton (520, 230, 70);
    textSize(30);
    fill(61, 28, 10);
    text("A", 299, 230);
    text("B", 520, 230);
    break;

  case 8:
    image(gato[8], 0, 0);
    text(historia[8], 200, 350);
    boton (530, 530, 70);
    flecha();
    break;

  case 9:
    tint(70);
    image(gato[9], 0, 0);
    text(historia[9], 270, 200);
    boton (530, 530, 70);
    flecha();
    break;

  case 10:
    tint(70);
    image(gato[10], 0, 0);
    text(historia[10], 300, 100);
    boton (530, 530, 70);
    flecha();
    break;

  case 11:
    tint(170);
    image(gato[11], 0, 0);
    text(historia[11], 300, 100);
    boton (530, 530, 70);
    flecha();
    break;

  case 12:
    tint(170);
    image(gato[12], 0, 0);
    text(historia[12], 300, 100);
    boton (530, 530, 70);
    flecha();
    break;

  case 13:
    image(gato[13], 0, 0);
    text(historia[13], 300, 50);
    boton (530, 530, 70);
    flecha();
    break;

  case 14:
    image(gato[14], 0, 0);
    text(historia[14], 440, 400);
    boton (530, 530, 70);
    flecha();
    break;

  case 15:
    image(gato[15], 0, 0);
    text(historia[15], 200, 300);
    boton (530, 530, 70);
    flecha();
    break;

  case 16:
    image(gato[16], 0, 0);
    text(historia[16], 300, 100);
    boton (530, 530, 70);
    flecha();
    break;

  case 17:
    image(gato[17], 0, 0);
    text(historia[17], 300, 50);
    boton (530, 530, 70);
    flecha();
    break;

  case 18:
    image(gato[18], 0, 0);
    text(historia[18], 130, 430);
    boton (530, 530, 70);
    flecha();
    break;

  case 19:
    image(gato[19], 0, 0);
    text(historia[19], 100, 200);
    boton (530, 530, 70);
    flecha();
    break;

  case 20:
    image(gato[20], 0, 0);
    text(historia[20], 170, 200);
    boton (530, 530, 70);
    flecha();
    break;

  case 21:
    image(gato[21], 0, 0);
    text(historia[21], 250, 550);
    boton (530, 530, 70);
    flecha();
    break;

  case 22:
    image(gato[22], 0, 0);
    text(historia[22], 300, 50);
    boton (530, 530, 70);
    flecha();
    break;

  case 23:
    fill(255);
    background(88, 42, 3);
    textSize(30);
    y = y + 2;
    text("FIN ", 300, y);
    if (y > 150) {
      text("TP3 - Ulrich Agustina", 300, y -150);
    }
    if (y > 250) {
      text("Autor:Charles Perrault ", 300, y -250);
    }
    if (y > 300) {
      text("Programadora:Ulrich Agustina ", 300, y -300);
    }
    if (y > 350) {
      text("Libro: El gato con Botas ", 300, y -350);
    }
    if (y > 450) {
      text("Gracias por ver, toca para reiniciar\n y buscar otro final", 300, y -450);
    }
    if ( y > 900) {
      botonCuadrado();
    }
  }
}


void mousePressed() {

  //final uno
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(530, 530, 100)) {
    estado= 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado= 3;
  } else if (estado == 3 && zonaCircular(530, 530, 70)) {
    estado= 4;
  } else if (estado == 4 && zonaCircular(530, 530, 100)) {
    estado= 5;
  } else if (estado == 5 && zonaCircular(530, 530, 100)) {
    estado= 6;
  } else if (estado == 6 && zonaCircular(530, 530, 100)) {
    estado= 7;
  } else if (estado == 7 && zonaCircular(300, 230, 100)) {
    estado= 8;
  } else if (estado == 8 && zonaCircular(530, 530, 100)) {
    estado= 9;
  } else if (estado == 9 && zonaCircular(530, 530, 100)) {
    estado= 10;
  } else if (estado == 10 && zonaCircular(530, 530, 100)) {
    estado= 11;
  } else if (estado == 11 && zonaCircular(530, 530, 100)) {
    estado= 12;
  } else if (estado == 12 && zonaCircular(530, 530, 100)) {
    estado= 23;
  }

  //final dos
  if (estado == 3 && zonaCircular(420, 530, 70)) {
    estado= 13;
  } else if (estado == 13 && zonaCircular(530, 530, 100)) {
    estado= 14;
  } else if (estado == 14 && zonaCircular(530, 530, 100)) {
    estado= 15;
  } else if (estado == 15 && zonaCircular(530, 530, 100)) {
    estado= 16;
  } else if (estado == 16 && zonaCircular(530, 530, 100)) {
    estado= 23;
  }

  //final tres
  if (estado == 7 && zonaCircular(530, 230, 100)) {
    estado= 17;
  } else if (estado == 17 && zonaCircular(530, 530, 100)) {
    estado= 18;
  } else if (estado == 18 && zonaCircular(530, 530, 100)) {
    estado= 19;
  } else if (estado == 19 && zonaCircular(530, 530, 100)) {
    estado= 20;
  } else if (estado == 20 && zonaCircular(530, 530, 100)) {
    estado= 21;
  } else if (estado == 21 && zonaCircular(530, 530, 100)) {
    estado= 22;
  } else if (estado == 22 && zonaCircular(530, 530, 100)) {
    estado= 23;
  }


  if (estado == 23 && zonaCircular(300, 300, 200)) {
    y = 0;
    estado = 0;
  }
}
