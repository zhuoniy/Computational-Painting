//import processing.pdf.*;
//import processing.png.*;

PImage img;
int i;
float im, imax, imin;
float[][] cirle;
int[] pixels;
float strokeweight=0.9;/////////////////////////////////////////


void setup() {
  background(255); ////////////////////////////////////
  img = loadImage("AC733.png");
  //size(1400,720,PDF,"2.pdf");
   size(4961,3508);
  /*size(1200, 700); 
  
  size(1300, 720); 
  
  smooth();
  
  strokeWeight(2);
  stroke(100);
  line(1180,700,20,700);
  line(20,700,20,20);
  line(1180,700,1175,697);
  line(1180,700,1175,703);
  line(20,20,23,25);
  line(20,20,17,25);
  textSize(20);
  fill(100);
  text("Hue",1150,690);
  text("Saturation",30,30);
 /* text("Brightness",1150,50);
 // color c = Color.HSBtoRGB(h, s, b);
  noStroke();
  
  colorMode(HSB);
  for(int j=255; j>=0; j--){
    fill(color(150, 150, 255-j));
    //fill(j,50,50);
    ellipse(1100,50,j/5,j/5);
  }
  colorMode(RGB);
  
  strokeWeight(2);
  stroke(100);
  line(1100,50,1140,50);
  line(1140,50,1135,47);
  line(1140,50,1135,53);
  */
  
  
  imax = img.width * img.height;
  //imax = img.height;
  imin = 0;
  img.loadPixels();
  cirle = new float[280][280];
  pixels = new int[img.width * img.height];
  //pixels = img.pixels;
  for(int j=0;j<imax;j++){
    pixels[j]=img.pixels[j];
  }
  translate(500, 200);   //17.jpg  //////////////////////////////////////////////////////
 // translate(400, 200);
  int temp=0;
  smooth();
  
  /*
  for(int j=0; j<imax; j++){
    for(int k=j; k<imax; k++){
      if(brightness(pixels[k])>brightness(pixels[j])){
        temp=pixels[k];
        pixels[k]=pixels[j];
        pixels[j]=temp;
      }
    }
  }
  */
  
  noFill();
  strokeWeight(strokeweight);
  
  /*for(i=0;i<imax;i++){
    cirle[(int)(hue(pixels[i]))]+=0.005;
    
    //println(cirle[(int)(hue(pixels[i]))]);
    stroke(pixels[i]);
    //println(hue(pixels[i]));
    //println(brightness(pixels[i]));
    ellipse((int)(hue(pixels[i])*4),(int)(brightness(pixels[i])*3),cirle[(int)(hue(pixels[i]))],cirle[(int)(hue(pixels[i]))]);
  }*/
  for(i=0;i<imax;i++){
    cirle[(int)(hue(pixels[i]))][(int)(saturation(pixels[i]))]+=strokeweight;
    stroke(pixels[i]);
  // ellipse(((int)hue(pixels[i]))*17,((int)saturation(pixels[i]))*11,cirle[(int)(hue(pixels[i]))][(int)(saturation(pixels[i]))],cirle[(int)(hue(pixels[i]))][(int)(saturation(pixels[i]))]);
  ellipse(((int)hue(pixels[i]))*17,((int)saturation(pixels[i]))*9,cirle[(int)(hue(pixels[i]))][(int)(saturation(pixels[i]))],cirle[(int)(hue(pixels[i]))][(int)(saturation(pixels[i]))]);
  }
  
   saveFrame("AC744-7.png");
}

/*void draw() {
  im +=800;
  //if (im > imax) exit();
  if (im > imax) im = imax;
  
  for(i=int(imin);i<im;i++){
    cirle[(int)(hue(pixels[i]))][(int)(brightness(pixels[i]))]+=strokeweight;
    stroke(pixels[i]);
   ellipse((int)(hue(pixels[i])*4),(int)(brightness(pixels[i])*2),cirle[(int)(hue(pixels[i]))][(int)(brightness(pixels[i]))],cirle[(int)(hue(pixels[i]))][(int)(brightness(pixels[i]))]);
  }
  
   if (im == imax) {
    // saveFrame("image_" + hour() + minute() + second() + ".png"); // UNCOMMENT !
    noLoop();
  }
  
}*/


