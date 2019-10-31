void createStars() {


  for (int i = 0; i < stars.length; i++) {
    float minRadius = width*1/27.7777777777;
    float xParameter = random(width);
    float yParameter = random(height);
    float radiusParameter = random(Star.maxRadius-minRadius, Star.maxRadius);
    stars[i] = new Star(random(width), random(height), random(Star.maxRadius));

    while (xParameter - radiusParameter < 0 || xParameter + radiusParameter > width) {
      xParameter = random(width);
    }
    while (yParameter - radiusParameter < 0 || yParameter + radiusParameter > height) {
      yParameter = random(width);
    }
    stars[i] = new Star (xParameter, yParameter, radiusParameter);
  }

  
} 
void overLap() {
  
  
  }
