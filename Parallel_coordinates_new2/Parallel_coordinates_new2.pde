import processing.pdf.*;

PImage img;
int i;
float im, imax, imin;
float[][] cirle;
//int[] pixels;
int[][][] count=new int[260][260][260];
float strokeweight=0.05;/////////////////////////////////////////
int H=0, S=400, B=800, C=1200;
int HS=200,SB=600,BC=1000;
float hei=2.5;

void setup() {
 // background(0); ////////////////////////////////////
   size(1400,720,PDF,"0_2.pdf");
  img = loadImage("0.png");
 // size(1200, 700); 
  
 // size(1400, 720); 
  
  smooth();
 // add yinying
  /*
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
//  pixels = new int[img.width * img.height];
 // pixels = img.pixels;

/* for(int j=0;j<imax;j++){
    pixels[j]=img.pixels[j];
  }*/
  translate(100, 700);     //////////////////////////////////////////////////////
  rotate(PI*3/2);
//rotateY(PI/3.0);
  int temp=0;
  smooth(); 
  
  
  for(int j=0; j<imax; j++){
    count[(int)hue(img.pixels[j])][(int)saturation(img.pixels[j])][(int)brightness(img.pixels[j])]++;
  }
  
  
//  noFill();
//  strokeWeight(strokeweight);

/*
  line(0,0,0,2000);
  line(0,H,700,H);
  line(0,S,700,S);
  line(0,B,700,B);
  line(0,C,700,C);
  */
  noFill();
  colorMode(HSB);
  float h,s,b;
  int hh,ss,bb;
  float xx=(50-5)/imax;
  float yy=50;
  strokeWeight(0.5);
  for(int j=0; j<imax; j++){
       // yy-=xx;
        h=hue(img.pixels[j]);
        hh=(int)h;
        s=saturation(img.pixels[j]);
        ss=(int)s;        
        b=brightness(img.pixels[j]);
        bb=(int)b;
        
        /* shade shade shade shade
        stroke(170,30);
        beginShape();
        vertex(h*hei-1,H);
        bezierVertex(h*hei-1,HS,s*hei-1,HS,s*hei-1,S);
        bezierVertex(s*hei-1,SB,b*hei-1,SB,b*hei-1,B);
        bezierVertex(b*hei-1,BC,count[hh][ss][bb]*150-1,BC,count[hh][ss][bb]*150-1,C);
        endShape();
      */
        stroke(img.pixels[j],100);
        beginShape();
        vertex(h*hei,H);
        bezierVertex(h*hei,HS,s*hei,HS,s*hei,S);
        bezierVertex(s*hei,SB,b*hei,SB,b*hei,B);
        bezierVertex(b*hei,BC,count[hh][ss][bb]*150,BC,count[hh][ss][bb]*150,C);
        endShape();
      
  }
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
