//Exploding Fireworks Program

//Global Objects
Firework[] fireworks = new Firework[25];


//Global Variables

void setup() {
  //size(500, 600);
  fullScreen();
  //Screensizechecker(); - see previous programs
   createFire();
}//End of setup

void draw() {
  background(0); //Black on greyscale, less memory
  //remember to include darkmode
  for (int i = 0; i < 25; i++) {

  //fireworks[i].edgeDetection();
  fireworks[i].moveBall();
  fireworks[i].classDraw();
  }
 
 
}//End of draw

void mousePressed() {
   createFire();
}//End of mousePressed
