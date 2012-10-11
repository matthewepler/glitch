PImage img;

void setup() {
  size(512, 512, JAVA2D);
  colorMode( HSB );
  img = loadImage("marylin.jpg");
  //img.loadPixels();
  img = epler(img);
  img.updatePixels();
  image(img, 0, 0);
}

PImage epler(PImage img) {
  img.save("data/glitch-out.jpg");  
  int target_row = ( int ) random( 0, img.height ); 
  img.loadPixels();

  for ( int y = target_row; y < img.height; y++ ) {
    for ( int x = 0; x < img.width; x++ ) {
      int pos = y * img.width + x;
      img.pixels[ pos ] = img.pixels[ target_row * img.width + x ];
    }
  }
  img.updatePixels();
  img.save("data/glitch-out.jpg");
  img = loadImage("glitch-out.jpg");
  return img;
}

