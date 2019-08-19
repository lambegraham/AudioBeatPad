void draw() {

  int x = 100;
  int y = 100;
  int colour = 150;
  strokeWeight(2);
  stroke(100);
  for (int i=0; i<3; i++) { //loop for drawing pads
    for (int j=0; j<3; j++) {
      if (j==0) {
        fill(colour); //change top line colour
      } else {
        fill(colour);
      }
      rect(x*i+55, y*j+55, x-10, y-10);
    }
  }
  fill(colour);
  line(400, 0, 400, 400); //gui seperator

  if (mode==true) {  //trigger mode indicator
    fill(#29FF00);
  }
  rect(520, 190, 15, 15);
  
  fill(colour);  //reset color
  
  if (mode==false) {  //loop mode indicator
    fill(#29FF00);
  }
  rect(520, 240, 15, 15);


  if (pad1depressed == true && mode==true) {  //pad1gui TRIGGER
    fill(200);
    rect(x*0+55, y*0+55, x-10, y-10);
    pad1depressed = false;
  }
  if (pad2depressed == true && mode==true) {  //pad2gui TRIGGER
    fill(200);
    rect(x*1+55, y*0+55, x-10, y-10);
    pad2depressed = false;
  }
  if (pad3depressed == true && mode==true) {  //pad3gui TRIGGER
    fill(200);
    rect(x*2+55, y*0+55, x-10, y-10);
    pad3depressed = false;
  }
  if (pad4depressed == true && mode==true) {  //pad4gui TRIGGER
    fill(200);
    rect(x*0+55, y*1+55, x-10, y-10);
    pad4depressed = false;
  }
  if (pad5depressed == true && mode==true) {  //pad5gui TRIGGER
    fill(200);
    rect(x*1+55, y*1+55, x-10, y-10);
    pad5depressed = false;
  }
  if (pad6depressed == true && mode==true) {  //pad6gui TRIGGER
    fill(200);
    rect(x*2+55, y*1+55, x-10, y-10);
    pad6depressed = false;
  }
  if (pad7depressed == true && mode==true) {  //pad7gui TRIGGER
    fill(200);
    rect(x*0+55, y*2+55, x-10, y-10);
    pad7depressed = false;
  }
  if (pad8depressed == true && mode==true) {  //pad8gui TRIGGER
    fill(200);
    rect(x*1+55, y*2+55, x-10, y-10);
    pad8depressed = false;
  }
  if (pad9depressed == true && mode==true) {  //pad9gui TRIGGER
    fill(200);
    rect(x*2+55, y*2+55, x-10, y-10);
    pad9depressed = false;
  }


  if (pad1depressed == true && mode == false) { //pad1gui LOOP
    fill(200);
    rect(x*0+55, y*0+55, x-10, y-10);
  }
  if (pad2depressed == true && mode == false) { //pad2gui LOOP
    fill(200);
    rect(x*1+55, y*0+55, x-10, y-10);
  }
  if (pad3depressed == true && mode == false) { //pad3gui LOOP
    fill(200);
    rect(x*2+55, y*0+55, x-10, y-10);
  }
  if (pad4depressed == true && mode == false) { //pad4gui LOOP
    fill(200);
    rect(x*0+55, y*1+55, x-10, y-10);
  }
  if (pad5depressed == true && mode == false) { //pad5gui LOOP
    fill(200);
    rect(x*1+55, y*1+55, x-10, y-10);
  }
  if (pad6depressed == true && mode == false) { //pad6gui LOOP
    fill(200);
    rect(x*2+55, y*1+55, x-10, y-10);
  }
  if (pad7depressed == true && mode == false) { //pad7gui LOOP
    fill(200);
    rect(x*0+55, y*2+55, x-10, y-10);
  }
  if (pad8depressed == true && mode == false) { //pad8gui LOOP
    fill(200);
    rect(x*1+55, y*2+55, x-10, y-10);
  }
  if (pad9depressed == true && mode == false) { //pad9gui LOOP
    fill(200);
    rect(x*2+55, y*2+55, x-10, y-10);
  }


  //set volume of all sounds
   pad1l.setGain(dB); 
   pad2l.setGain(dB);
   pad3l.setGain(dB);
   pad4l.setGain(dB);
   pad5l.setGain(dB);
   pad6l.setGain(dB);
   pad7l.setGain(dB);
   pad8l.setGain(dB);
   pad9l.setGain(dB);
   
   pad1t.setGain(dB);
   pad2t.setGain(dB);
   pad3t.setGain(dB);
   pad4t.setGain(dB);
   pad5t.setGain(dB);
   pad6t.setGain(dB);
   pad7t.setGain(dB);
   pad8t.setGain(dB);
   pad9t.setGain(dB);
   
   fill(225);
   textSize(30);
   text("1",90,110);
   text("2", 190, 110);
   text("3", 290, 110);
   text("4", 90, 210);
   text("5", 190, 210);
   text("6", 290, 210);
   text("7", 90, 310);
   text("8", 190, 310);
   text("9", 290, 310);
}