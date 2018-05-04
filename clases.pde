interface Per
{
  void display();
  void movimiento();
}

class Personaje implements Per
{
  //especifico sus atributos
  
  int dibujar;
  int valor;
Personaje(int dibujar_, int valor_){
    //los parámetros del método de construcción se asignan como los valores de mis atributos
    dibujar = dibujar_;
    valor = valor_;
  }
  //especifico su representación visual en el método display
  void display(){
    switch(dibujar){
      case 1:
     image (montu, 0,250);
      break;
      
        case 2:
        //Badh
      image (badh, 300,250);
       break;
      
       
      case 3:
     //Caous
      image (caous, 600,250);
        break;
        
        case 4:
        //Huitzilopochtli
        image (huitzilopochtli,60,600);
        break;
         case 5:
     //Marte
     image (marte, 550, 600);
      break;
    }    
  }  
  void movimiento()
  {
    
  }
}

class Volar implements Per
{
  float x,y,dx,dy;
  
  Volar (float x_, float y_, float dx_, float dy_)
  {
    x = x_;
    y = y_;
    dx = dx_;
    dy = dy_;
  }
  
  void display()
  {
    pushMatrix();
    translate (x,y);
  //scale(0.3,0.3);
    image (ilu,0,0);
    popMatrix();
  }
  
  void movimiento()
  {
    x += dx;
    y += dy;
    
    if (x > width)
    {
      x = width;
      dx= dx* -1;
    }
    if (x<0){
      x = 0;
      dx= dx* -1;
    }
    if (y<0){
      y = 0;
      dy*= -1;
    }
    if (y>height){
      y = height;
      dy*= -1;
    }
  }
}