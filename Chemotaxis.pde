Mover [] bacteria;

 void setup()  
 {    
 	size(500,500);
 	background (0);
 	bacteria = new Mover[10];
 	for (int i=0;i<bacteria.length; i++)	
 	{
 		bacteria[i] = new Mover(); 	
 	}

 }   
 void draw()   
 {  background (0);
 	for (int i= 0; i< bacteria.length;i++)
 	{
 		bacteria[i].move();
 		bacteria[i].show();
 	}
 }  
 class Mover    
 {     
 	int x, y;
 	Mover()
 	{	
 		x= (int)(Math.random()*300);
 		y=(int)(Math.random()*300);
 	}
 	void move() {
 		x++;
 		y++;	
 		frameRate(10);
 	}
 	void show() {
 		fill(200,140,250);
 		ellipse(x,y,20,20);

 	}
 }    