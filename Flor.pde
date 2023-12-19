float t = 0, t1 = 0, rg = 0, rl = 200, rt = 500;
int petalos = 0, cont = 0;
color morado = #8405d2, azul = #4206f5, verde = #04f5a5;

void setup(){
  size(800, 800);
  background(0);
  strokeWeight(3);
}

void draw(){
  
   if (rg < 23*TAU && cont < 1450)
   {  
     if(petalos == 0)
     {
       stroke(morado);
     }
     else if(petalos == 1)
     {
       stroke(azul);
     }
     
     point(rg*cos(radians(t))+(width)*0.5,rg*sin(radians(t))+(height)*0.3);
     point(rg*cos(radians(-t))+(width)*0.5,rg*sin(radians(-t))+(height)*0.3);
     rg += 0.5;
     t += 1;
     cont += 1;
     
   }
   
   else
   {
     rg = 0;
     petalos += 1;
     
     if(petalos == 2)
     {
       petalos = 0;
     }
     
     if(cont >= 1450 && cont < 2000)
     {
        stroke(verde);
        point(10*sin(radians(t1))+((width)*0.5),t1+((height)*0.3));
        t1 += 1;
        cont += 1;
     }
   }
   
     //Salvar frames
  if(cont <= 2000 && cont % 5 == 0){
    saveFrame("imagenes/draw####.jpg");
  }
}
