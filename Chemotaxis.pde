Mover [] bacteria;

 void setup()  
 {    
 	size(500,500);
 	background (0);
 	bacteria = new Mover[100];
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
 		x= (int)(Math.random()*500);
 		y= (int)(Math.random()*500);
 	}
 	void move() {
 		x += (int)(Math.random()*5)-2;
 		y += (int)(Math.random()*5)-2;	

 		if (mousePressed) {
 			
 			x=(int)(Math.random()*500);
 			y=(int)(Math.random()*500);
 		}
 		frameRate(8);
 	}
 	void show() {
 		fill((int)((Math.random()*256)+1),(int)((Math.random()*256)+1),(int)((Math.random()*256)+1));
 		ellipse(x,y,20,20);

 	}
 }    