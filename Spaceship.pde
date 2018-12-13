class Spaceship extends Floater {   
   //your code here
   public Spaceship() {
     corners = 4;
     int[] xArray = {-8, 16, -8, -2}; 
     int[] yArray = {-8, 0, 8, 0};
     xCorners = xArray;
     yCorners = yArray;
     myColor = #A4C4FA;
   }
   public void HyperSpace() {
       myCenterX = Math.random()*width + 1;
       myCenterY = Math.random()*height + 1;
       myPointDirection = Math.random()*360;
       myDirectionX = 0;
       myDirectionY = 0;
   }
   public void setX(int x) { myCenterX = x; }  
   public int getX() { return (int)myCenterX; }   
   public void setY(int y) { myCenterY = y; }   
   public int getY() { return (int)myCenterY; }   
   public void setDirectionX(double x) { myDirectionX = x; }   
   public double getDirectionX() { return myDirectionX; }   
   public void setDirectionY(double y) { myDirectionY = y; }   
   public double getDirectionY() { return myDirectionY; }   
   public void setPointDirection(int degrees) { myPointDirection = degrees; }   
   public double getPointDirection() { return myPointDirection; } 
}