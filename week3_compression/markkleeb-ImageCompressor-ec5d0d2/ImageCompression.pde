PImage img; 
PImage img2;
int dimension;
int compdim;
int counter;

void setup(){
 
  img = loadImage("waterlillies.jpeg");
  img2 = loadImage("waterlillies.jpeg");
  
  size(img.width,img.height*2);
 
  
  img2.resize(img.width/100, img.height);
  img2.resize(img.width,img.height);
 
  dimension = img.width*img.height;
 
}


void draw(){
  
  image(img,0,0);
  
  
  
  image(img2,0,img.height);

 

  
   
}

void keyPressed(){
 if(key == ' '){
  saveFrame();
 } 
  
}
