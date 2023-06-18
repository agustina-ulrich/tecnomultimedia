//Agustina Ulrich Comision 2
//TP2
//https://youtu.be/FnHBWZDf-9M
PImage opart;
int screenHeight,screenWidth;
int cantAlto,cantAncho, posXInicial;
int alto,ancho;

int cuadradoInteriorAlto,cuadradoInteriorAncho;
int centroCuadradoX,centroCuadradoY;

color color1,color2;
color bg ;
void setup() {
   bg = color( 0 );
  screenWidth = 800;
  screenHeight = 400;
  size (800, 400);
  
  opart = loadImage("arteop.png");
  cantAlto = 40;
  cantAncho = 10;
  posXInicial = 400;
  
  ancho = (screenWidth - posXInicial) / cantAncho;
  alto = screenHeight / cantAlto;
  
  //interior
  cuadradoInteriorAlto = 6;
  cuadradoInteriorAncho = 24;
  centroCuadradoY = (screenHeight / 2) - (cuadradoInteriorAlto/2) * ancho;
  centroCuadradoX = ((screenWidth - posXInicial)/2 + posXInicial) - (cuadradoInteriorAncho/2) * alto;
  color1=0;
  color2=255;
}

void draw() {
 
  background (255);
  // imagen de referencia
  image(opart, 0, 0, 400, 400);
  
  
  //cuadrado fondo
  for ( int i = 0; i<cantAlto; i++) {
    for ( int j = 0; j < cantAncho; j++ ) {
      if ( (i+j)%2 == 0 ) {
        fill(color1);
      }else{
        fill(color2);
      }
      rect(posXInicial + j*ancho ,i*alto, ancho, alto);
    }
  }
  
  //cuadrado del medio
 dibujarCuadradoInterno();
 
 println( color1);
}

void mousePressed(){
  color tempColor;
  tempColor = color1;
  color1 = color2 ;
  color2 = tempColor;
}

void keyPressed() {
  if ( key ==  'r' ){
   resetearVariables() ;
  }
  
  if (key == ' ') {
   color1 = color ( random (100,255), random (100, 40), random (255,100)); 
  }

}

void resetearVariables(){
 bg = color( 0 );
 color1=0;
  color2=255;
}

int suma(int num1, int num2){
return num1 + num2;
}

void dibujarCuadradoInterno(){
 for ( int i = 0; i<cuadradoInteriorAlto; i++) {
    for ( int j = 0; j < cuadradoInteriorAncho; j++ ) {
      if ( (i+j)%2 == 0 ) {
        fill(color1);
      }else{
        fill(color2);
      }
      rect(suma(centroCuadradoX, j*alto),suma(centroCuadradoY , i*ancho), alto, ancho);
    }
  }
}
