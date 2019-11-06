class Firework {
  //Object Variables
  float x;
  float y;
  float radius;
  float diameter;
  float xSpeed;
  float ySpeed;
  color colour;
  
 
  //Static variable for the number of exploding objects
   
  //Constructor

  Firework (float  xParameter, float yParameter, float radiusParameter, float xSpeed, float ySpeed) {
    this.x = xParameter;
    this.y = yParameter;
    radius = radiusParameter;
    diameter = random(0.5,20 ); //If you want random radi goes here
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.colour = color(int(random(256)), int(random(137)), int(random(119)));
  }
  //Edge detection
  void edgeDetection() {
    if (x + diameter/2 >= displayWidth ||x - diameter/2 <= 0 ) {
      xSpeed *= -1;
    }
    
    if ( y+ diameter/2 >= displayHeight||y - diameter/2 <= 0) {
      ySpeed *= -1;
    }
    
  }

  //Ball movement
  void moveBall() {
    x += xSpeed;
    y += ySpeed;
  }

  //Draw
  void classDraw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }

  //Getters and Setters
}//End of class
