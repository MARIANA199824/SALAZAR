//variables globales
int j1, j2;
int ancla=0;
float j1vida;
float j2vida;
float j1ataque;
float j2ataque;
int turno=0;
// imagenes
PImage inicio;
PImage badh;
PImage caous;
PImage montu;
PImage huitzilopochtli;
PImage marte;
PImage fondoseleccion;
PImage fondocombate;
PImage ilu;
Volar signo;
ArrayList <Volar> a;
Volar una;
//defino el nombre de mi clase utilizando la palabra class y su nombre

 
 //especifico su método de construcción de clase
  

//Aquí inicia mi sketch
//ahora tengo acceso a un nuevo tipo de datos que es el tipo Carta

Personaje Montu;
Personaje Badh;
Personaje Caous;
Personaje Huitzilopochtli;
Personaje Marte;

void setup(){
  size(800,800);
  //cargo imagenes
  badh = loadImage ("badh.png");
  caous= loadImage ("caous.png");
  montu=loadImage("montu.png");
  huitzilopochtli=loadImage ("huitzilopochtli.png");
  marte=loadImage ("marte.png");
  fondocombate=loadImage ("fondocombate.jpg");
  ilu=loadImage ("imagen.png");
  //inicializo mis objetos con su método de construcción;
  Montu=new Personaje(1,1);//el primer numero llama al case donde dibujas el personaje 0== case1
  Badh= new Personaje (2,2);//el ultimo numero es la seleccion del keypressed
  Caous=new Personaje(3,3);
  Huitzilopochtli=new Personaje(4,4);
  Marte= new Personaje (5,5);
  
  a = new ArrayList <Volar>();
  
  for (int i=0; i<10; i++)
{
  a.add (new Volar (random(250),random(140),random(5),random(10)));
}

if (random(1)<0.1)
{
  Volar p = new Volar (random(70,175),0,3,3);
  a.add(p);
}

  }
  
  void draw(){
  //pantalla
  if (ancla==0)
  {
    fondoUno();
    
    if(keyPressed && (key=='z'||key=='Z'))
    {
     ancla=1;
    }
  }
  if (ancla==1)
 {
   fondoseleccion();
   seleccionJugadoruno ();
   seleccionJugadordos ();
  
   if(j1!=0 && j2!=0)
   {
     ancla=2;
   }
 }
 
 if(ancla==2){
   fondoPelea();
   if (j1vida<=0||j2vida<=0)
   {
     if(key=='m'||key=='M')
     {
       ancla=3;
     }
   }
 }
   
   if(ancla==3){
     fondoganador();
     {
       if(keyPressed && (key=='0'))
       {
         fondoUno();
         ancla=0;
         j1=0;
         j2=0;
       }
     }
   }
 }