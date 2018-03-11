size(560,280); //size of grid
byte[] data = loadBytes("square.npy");
println(data.length);

int total = 1000; //no. of drawings required

byte[] outdata = new byte[total*784];
int outindex = 0;

for(int n=0; n<total; n++){
  int start = 80 + n*784; //28x28 space allocated with a gap of 80
  //PImage img = createImage(28,28, RGB); //28x28 pixels image in RGB
  //img.loadPixels();
  for(int i=0; i<784; i++){
    int index = i + start;
    byte val = data[index];
    outdata[outindex] = val;
    outindex++;
    //img.pixels[i] = color(255 - val & 0xff); //bitwise operation
  }
  
  //img.updatePixels();
  //int x = 28*(n %20);
  //int y = 28*(n/20);
  //image(img, x, y); 
}

saveBytes("square1000.bin", outdata);