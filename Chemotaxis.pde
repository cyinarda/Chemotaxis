Bacteria [] colony;

void setup()
    {
       size(550, 550);
       background(160);
       colony = new Bacteria[10];
       for(int i = 0; i < colony.length; i++)
           {
              colony[i] = new Bacteria();

           }
     }

 void draw()
 	{
 	 for(int i = 0; i < colony.length; i++)
 	 	{
 	 	  colony[i].move();
          colony[i].show();
        }	
 	}



class Bacteria
{
     int myX, myY, myColor;

   Bacteria()
     {
        myX = (int)(Math.random() * 250) + 150;
        myY = (int)(Math.random() * 250) + 150;
        myColor = color(0, 0, 255);
     }

void move() 
     {
        myX = myX + (int)(Math.random() * 5) - 2;
        myY = myY + (int)(Math.random() * 5) - 2;
     }

void show()
  {
  	fill(myColor);
	ellipse(myX, myY, 35, 35);
  }
}
