//your variable declarations here
Spaceship spaceShip;
Star[] s;
boolean upIsPressed, downIsPressed, leftIsPressed, rightIsPressed, zIsPressed = false;

public void setup() {
  //your code here
  size(600, 600);
  spaceShip = new Spaceship();
  spaceShip.setX(width/2);
  spaceShip.setY(height/2);
  s = new Star[350];
  for(int q = 0; q < s.length; q++) {
    s[q] = new Star();
  }
}
public void draw() {
  //your code here
  background(#00010F);
  for(int q = 0; q < s.length; q++) {
    s[q].show();
  }
  spaceShip.show();
  spaceShip.move();
  System.out.println("X speed: " + spaceShip.myDirectionX + " Y speed: " + spaceShip.myDirectionY);
  if(leftIsPressed) {
    spaceShip.turn(-10);
  } else if (rightIsPressed) {
    spaceShip.turn(10);
  } 
  if (upIsPressed) { 
    spaceShip.accelerate(0.5);
  } else if (!upIsPressed) {
 
    if (spaceShip.getDirectionX() > -0.1 && spaceShip.getDirectionX() < 0.1) {
      spaceShip.setDirectionX(0); 
    }
    if (spaceShip.getDirectionY() > -0.1 && spaceShip.getDirectionY() < 0.1) {
      spaceShip.setDirectionY(0); 
    }
  }
}

void keyPressed() {
   if (key == 'z') { spaceShip.HyperSpace(); }
   else if (keyCode == UP) {  upIsPressed = true; }
   else if (keyCode == DOWN) { downIsPressed = true; } 
   else if (keyCode == LEFT) { leftIsPressed = true; } 
   else if (keyCode == RIGHT) { rightIsPressed = true; }
}
void keyReleased() {
  if (keyCode == UP) { upIsPressed = false; }
  else if (keyCode == DOWN) { downIsPressed = false; }
  else if (keyCode == LEFT) { leftIsPressed = false; }
  else if (keyCode == RIGHT) { rightIsPressed = false; }
}