//start keypress/stop keypress, screen canvas checker ballclass.java
//Global Variables
boolean start = false;


//Objects
private Star[] stars = new Star[Star.starCount];//Size of list



public void setup() {
  size(500, 600);
  screenSizeTester();
  ellipseMode(CENTER);
  createStars();
}//End Of Setup

public void draw() {
  StartStop();
  if (start == true) {
    background(0);//Black, greyscale, less memory than variable
for (int i = 0; i < stars.length; i++) {
   stars[i].step();
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());  }
}

}//End of draw()
public void mouseClicked() {
  stars[i].targetX= mouseX;
  stars[i].targetY= mouseY;
}
