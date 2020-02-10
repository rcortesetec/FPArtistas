class Pelota
{
  
    // Variables de instancia
    
    private float x;
    private float y;
    private float diametro; 
    private float velocidad;
    private int direccion;
    
    // Contructores   
    
    Pelota()
    {
       x=100;
       y=100;
       diametro=50;
       velocidad =10;
       direccion = 1;
    }
    
    
    Pelota(float x, float y)
    {
       this.x=x;
       this.y=y;
       diametro=50;
       velocidad =10;
       direccion = 1;
    }
    
    Pelota(float x, float y,float d, float v, int dir)
    {
       this.x=x;
       this.y=y;
       diametro=d;
       velocidad =v;
       direccion = dir;
    }
    
    // Getters y Setter
    
    public void setX(float x)
    {
       this.x = x; 
    }
    
    public void setY(float y)
    {
       this.y = y; 
    }
    
    public void setDiametro(float d)
    {
       diametro = d; 
    }
    
    public void setVelocidad(float v)
    {
       velocidad = v; 
    }
    
    public void setDireccion(int d)
    {
       direccion = d; 
    }
    
    public float getX()
    {
       return x;
    }

    public float getY()
    {
       return y;
    }
    
    public float getDiametro()
    {
       return diametro;
    }
    
    public float getVelocidad()
    {
       return velocidad;
    }

    public float getDireccion()
    {
       return direccion;
    }

    
    
    public void move()
    {
       y+= (velocidad*direccion);
       
       if((y > (height - diametro/2))  || (y < diametro /2))
         direccion *=-1; 
    }
    
        
    public void display()
    {
      ellipse(x,y,diametro,diametro);   
    }
}

Pelota p1;


void setup()
{
   size(400,400);
   background(0);
   smooth();
   p1 = new Pelota();  
}


void draw()
{
     
   fill(0,25);
   rect(0,0,width,height);
   fill(255);
   
    p1.move();
    p1.display();
   
}


