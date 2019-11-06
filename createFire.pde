void createFire() {


  for (int i = 0; i < fireworks.length; i++) {
    float minRadius = width*1/27.7777777777;
    float xSpeed = random(-4,4);
    float ySpeed = random(-2,12);
    int  maxRadius = 5;
    float xParameter = random(width);
    float yParameter = random(height);
    float radiusParameter = random(minRadius, maxRadius);


    while (xParameter - radiusParameter < 0 || xParameter + radiusParameter > width) {
      xParameter = random(width);
    }
    while (yParameter - radiusParameter < 0 || yParameter + radiusParameter > height) {
      yParameter = random(width);
    }
    fireworks[i] = new Firework(mouseX, mouseY, random(maxRadius), xSpeed, ySpeed);
  }
}
