PImage img;

void setup() {
  size(512, 512, JAVA2D);
  img = loadImage("marylin.jpg");
  img.loadPixels();
  img = glitch(img);
  img.updatePixels();
  image(img, 0, 0);
}

PImage glitch(PImage img) {
  img.save("data/glitch-out.jpg");
  byte raw[] = loadBytes("glitch-out.jpg");
  
  int _start = ( int ) random( 0, raw.length );
  int _end = ( int ) random( _start, raw.length );

  for ( int i = _start; i < _end; i++ ) {
    print( hex( raw[ i ] ) + "" );
    if (raw[i] == 'b') {
      raw[i] = 'B';
    }
  }
  
  saveBytes("data/glitch-out.jpg", raw);
  img = loadImage("glitch-out.jpg");
  return img;
}

