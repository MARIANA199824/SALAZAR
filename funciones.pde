//FONDOS DE PANTALLA
void fondoUno ()
{
 fill (random(255),random(255),random (255));
 rect(0, 0, 800, 800); 
 inicio= loadImage ("inicio.png");
 image (inicio, 3,4);
 //texto7
 fill (#3B6C3D);
 ellipse(410,730,700,70);
 textSize(40);
 fill(0);
 text("Bienvenido, presione z", 170, 740);
}

void fondoseleccion ()
{  
  fondoseleccion= loadImage ("fondoseleccion.jpg");
  image (fondoseleccion, 3,4);
  fill (#7DC492);

 textSize(30);
 fill(255);
text("Jugador1 por favor selecione(a, s, d, f, g)", 100, 50); 
textSize(30);
 fill(255);
text("Jugador2 por favor selecione (q, w, e, r, t)", 100, 90); 
textSize(30);
fill(#FFFFFF);

   //letras

textSize(30);
fill(255);
text("a/q", 100, 500); 
text("s/w", 400, 500); 
text("d/e", 700, 500); 
text("f/r" ,250, 750); 
text("g/t", 530, 750); 


   //personajes
   Montu.display();
   Badh.display();
   Caous.display();
   Huitzilopochtli.display();
   Marte.display();

}

void fondoPelea(){
  {
/*int r = 0;
int g = 0;
int b = 0;
int ColoresChidos = 3;
for ( int i = 0; i< height; i ++)
{
stroke (i,g,b);
line(0,i,width,i);
text("Jugador1 ataca con  x ", 100, 90); 
text("Jugador2 ataca con  y ", 100,120); 
textSize(30);
}
  }*/
  for (Volar e: a)
  {
    e.display();
    e.movimiento();
 
  }
  
  pushMatrix();
  scale (1,1); 
  image (fondocombate,0,0,width,height);
  popMatrix();
  
 text("Jugador1 ataca con  x ", 100, 90); 
 text("Jugador2 ataca con  y ", 550,90);  
  
  
  //jugadorUno
 fill (#FFC964);
rect(100, 200, (j1vida)*2, 40); 
//jugador Dos
 fill (#FFC964);
rect(500, 200, (j2vida)*2, 40); 
 //Para que paren de morir
 if (j1vida<=0)
 {
  text ("JUEGO TERMINADO", 210,200); 
   
 }
 else
if (j2vida <= 0)
{
   text ("K.O", 210,200); 
}
 //paramostrar en pantalla los personjes

 if (j1==1)
 {
   pushMatrix();
   translate (110,100);
   Montu.display();
   popMatrix();
 }
 else if (j1==2)
 {
   pushMatrix();
   translate (-230,100);
   Badh.display();
   popMatrix();
 }
 else if (j1==3)
 {
   pushMatrix();
   translate (-550,100);
   Caous.display();
   popMatrix();
 }
 else if (j1 ==4)
 {
   pushMatrix();
   translate (1,-250);
   Huitzilopochtli.display();
   popMatrix();
 }
 else if (j1==5)
 {
   pushMatrix();
   translate (-470,-250);
   Marte.display();
   popMatrix();
 }

 if (j2==1)
 {
   pushMatrix();
   translate (510,100);
   Montu.display();
   popMatrix();
  
 }
 else if (j2==2)
 {
    pushMatrix();
    translate (150,100);
    Badh.display();
    popMatrix();
 }
 else if (j2==3)
 {
   pushMatrix();
   translate (-70,100);
 Caous.display();
 popMatrix();
 }
 else if (j2 ==4)
 {
   pushMatrix();
   translate (510,-250);
  Huitzilopochtli.display();
  popMatrix();
 }
 else if (j2==5)
 {
   pushMatrix();
   translate (-20,-250);
   Marte.display();
   popMatrix();
 }

if(j1vida<=0)
{
//fill (#B589D1);
//rect(0, 0, 900, 900); 

fill (0);
rect (55,360,750,45);
fill(255);
textSize(40);
text("PRESIONA M PARA VER EL GANADOR", 70,400);
}
if(j2vida<=0)
{
fill (0);
rect (55,360,750,45);
fill(255);
textSize(40);
text("PRESIONA M PARA VER EL GANADOR", 70,400);
}
}
}


void fondoganador()
{
  fill (0);
  rect(0,0,width,height);
  if (j1vida<=0)
  {
    fill(255);
    textSize (60);
    text("GANO JUGADOR 1",150,50);
    fill(255);
    textSize(50);
    text("Presione 0 para regresar", 200,500);
  }
if (j2vida<=0)
  {
    fill(255);
    textSize (60);
    text("GANO JUGADOR 2",230,250);
    fill(0);
    textSize(50);
    text("Presione 0 para regresar", 200,500);
  }

}

//Aqui se asiganaran los valores de los jugadores a las letras
void seleccionJugadoruno (){
  if(keyPressed)
  {
  switch (key)
{
case 'a':
j1=1;
j1vida=100;
j1ataque=random(1,10);
break;

case 's':
j1=2;
j1vida=100;
j1ataque=random(1,10);
break;

case 'd':
j1=3;
j1vida=100;
j1ataque=random(1,10);
break;

case 'f':
j1=4;
j1vida=100;
j1ataque=random(1,10);
break;

case 5:
j1=5;
j1vida=100;
j1ataque=random(1,10);
break;
}
  }
}
void seleccionJugadordos (){
  if(keyPressed)
  {
  switch (key)
{
case 'q':
j2=1;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'w':
j2=2;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'e':
j2=3;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'r':
j2=4;
j2vida=100;
j2ataque=random(1,10 );
break;

case 't':
j2=5;
j2vida=100;
j2ataque=random(1,10 );
break;
}
}
}
//aqui pelean con x y y
void keyPressed (){
 if (turno == 0&&ancla==2){
   if (key=='x'|| key == 'X')
   {
     j2vida = j2vida - j1ataque;
     println (j1vida);
     turno = 1;
   }
 } 
 if (turno == 1 &&ancla==2){
   if (key=='y'|| key == 'Y')
   {
     j1vida = j1vida - j2ataque;
     println (j2vida);
     turno = 0;
   }
 }  
}
  