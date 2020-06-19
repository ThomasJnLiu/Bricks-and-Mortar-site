PImage logo, gradient;

void setup(){
  size(792, 150);
  logo = loadImage("BRICKSxMORTAR_logo_transparentX.png");
  gradient = loadImage("gradient.jpg");
}

void draw(){
  for (int i = 0; i<30; i++){
    float x = random(width);
    float y = random(height);
    color c = gradient.get(int(x),int(y));
    fill(c);
    noStroke();
    ellipse(x,y,abs(mouseX),abs(mouseY));
    
    image(logo,0,0);
  }
}
