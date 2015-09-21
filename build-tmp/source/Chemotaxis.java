import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

Mover [] bacteria;

 public void setup()  
 {    
 	size(500,500);
 	background (0);
 	bacteria = new Mover[10];
 	for (int i=0;i<bacteria.length; i++)	
 	{
 		bacteria[i] = new Mover(); 	
 	}

 }   
 public void draw()   
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
 	public void move() {
 		x++;
 		y++;	
 		frameRate(10);
 	}
 	public void show() {
 		fill(200,140,250);
 		ellipse(x,y,20,20);

 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
