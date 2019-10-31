class Star {
   float targetY;
   float targetX;
  private float x;
  private float y;
  private float radius;
     

  public static int starCount = 12 ; //Number of stars or pong balls that will be drawn, static never changes
  public static int maxRadius = 20;

  public Star(float xParameter, float yParameter, float radiusParameter) {
    this.x = xParameter ;
    this.y = yParameter;
    this.radius = radiusParameter;
    
    targetX = xParameter;
    targetY= yParameter;
  }//End of constructor
 public void step() {
    if (x < targetX) {
      x +=  (targetX - x)/20;
    } else {
      x -= (x - targetX)/20;
    }
    if (y <targetY) {
      y+=  (targetY-y)/20 ;
    } else {
      y-= (y-targetY)/20 ;
    }
 }

  //Getters
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
 public  float getRadius(){
    return radius;
}
public  float getTargetX(){
    return targetX;
}
public  float getTargetY(){
    return targetY;
}



}//End of class
