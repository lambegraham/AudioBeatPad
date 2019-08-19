/*
@Graham Lambe
Maynooth University
*/


import ddf.minim.*;
import ddf.minim.ugens.*;
import controlP5.*;

Minim minim;
ControlP5 cp5;
AudioOutput out;
AudioSample pad1t, pad2t, pad3t, pad4t, pad5t, pad6t, pad7t, pad8t, pad9t;
AudioPlayer padloop, pad1l, pad2l, pad3l, pad4l, pad5l, pad6l, pad7l, pad8l, pad9l;

boolean pad1struck, pad2struck, pad3struck, pad4struck, pad5struck, pad6struck, pad7struck, pad8struck, pad9struck;
boolean pad1depressed, pad2depressed, pad3depressed, pad4depressed, pad5depressed, pad6depressed, pad7depressed, pad8depressed, pad9depressed;
boolean loop;
int dB;
boolean mode, triggermode, loopmode;

void setup () {
  size(600, 400);
  background(50);

  cp5 = new ControlP5(this);

  minim = new Minim(this);
  out = minim.getLineOut();

  pad1l = minim.loadFile("hornSound1.wav", 512);  //load trigger files
  pad2l = minim.loadFile("hornSound2.wav", 512);
  pad3l = minim.loadFile("hornShuffle.wav", 512);
  pad4l = minim.loadFile("preDrop.wav", 512);
  pad5l = minim.loadFile("drop.wav", 512);
  pad6l = minim.loadFile("hornSoundFull.wav", 512);
  pad7l = minim.loadFile("leadUp.wav", 512);
  pad8l = minim.loadFile("bassAndDrum.wav", 512);
  pad9l = minim.loadFile("sample1.wav", 512);

  pad1t = minim.loadSample("hornSound1.wav", 512);  //load loop files
  pad2t = minim.loadSample("hornSound2.wav", 512);
  pad3t = minim.loadSample("hornShuffle.wav", 512);
  pad4t = minim.loadSample("preDrop.wav", 512);
  pad5t = minim.loadSample("drop.wav", 512);
  pad6t = minim.loadSample("hornSoundFull.wav", 512);
  pad7t = minim.loadSample("leadUp.wav", 512);
  pad8t = minim.loadSample("bassAndDrum.wav", 512);
  pad9t = minim.loadSample("sample1.wav", 512);


  cp5.addSlider("dB")
    .setPosition(450, 100)
    .setRange(-6, 6)
    .setNumberOfTickMarks(13)
    ;

  mode = true;

  fill(255);
  text("Trigger Mode", 420, 200);
  text("Loop Mode", 420, 250);

  text("Volume", 450, 90);

  textSize(13);
  text("Press 'm' to switch modes", 420, 320);
}

void keyPressed() {

  if (key == 'm') {
    mode=!mode;
    if (mode == true)  System.out.println("Trigger Mode");
    if (mode == false)  System.out.println("Loop Mode");
  }


  if (mode == true) { //TRIGGER MODE


    if (key == '1') {
      System.out.println("Pad 1 Pressed");
      pad1depressed = true;
      pad1struck = true;
      pad1t.trigger();
      pad1struck = false;
      delay(50);
    }
    if (key == '2') {
      System.out.println("Pad 2 Pressed");
      pad2depressed = true;
      pad2struck = true;
      pad2t.trigger();
      pad2struck = false;
      delay(50);
    }
    if (key == '3') {
      System.out.println("Pad 3 Pressed");
      pad3depressed = true;
      //pad3struck = true;
      pad3t.trigger();
      //pad3struck = false;
      delay(50);
    }  
    if (key == '4') {
      System.out.println("Pad 4 Pressed");
      pad4depressed = true;
      pad4struck = true;
      pad4t.trigger();
      pad4struck = false;
      delay(50);
    }
    if (key == '5') {
      System.out.println("Pad 5 Pressed");
      pad5depressed = true;
      pad5struck = true;
      pad5t.trigger();
      pad5struck = false;
      delay(50);
    }   
    if (key == '6') {
      System.out.println("Pad 6 Pressed");
      pad6depressed = true;
      pad6struck = true;
      pad6t.trigger();
      pad6struck = false;
      delay(50);
    }   
    if (key == '7') {
      System.out.println("Pad 7 Pressed");
      pad7depressed = true;
      pad7struck = true;
      pad7t.trigger();
      pad7struck = false;
      delay(50);
    }   
    if (key == '8') {
      System.out.println("Pad 8 Pressed");
      pad8depressed = true;
      pad8struck = true;
      pad8t.trigger();
      pad8struck = false;
      delay(50);
    }   
    if (key == '9') {
      System.out.println("Pad 9 Pressed");
      pad9depressed = true;
      pad9struck = true;
      pad9t.trigger();
      pad9struck = false;
      delay(50);
    }   
  }  //TRIGGER mode end


  if (mode == false) {  //LOOP mode

/*
    if (pad1l.isLooping()==true)  pad1depressed=true;
    if (pad2l.isLooping()==true)  pad2depressed=true;
    if (pad3l.isLooping()==true)  pad3depressed=true;
    if (pad4l.isLooping()==true)  pad4depressed=true;
    if (pad5l.isLooping()==true)  pad5depressed=true;
    if (pad6l.isLooping()==true)  pad6depressed=true;
    if (pad7l.isLooping()==true)  pad7depressed=true;
    if (pad8l.isLooping()==true)  pad8depressed=true;
    if (pad9l.isLooping()==true)  pad9depressed=true;  */  //Failed attempt at resuming button status upon switch into loop
                                                           //Causes bug where button stays stuck & stops playback

    if (key == '1') {
      pad1depressed=!pad1depressed;
      if (pad1depressed == true) {
        pad1l.loop();
        System.out.println("Pad 1 Looping");
      }
      if (pad1depressed == false) {
        pad1l.loop(); //to reset position
        pad1l.pause();
        System.out.println("Pad 1 Stopped Looping");
      }
    }
    if (key == '2') {
      pad2depressed=!pad2depressed;
      if (pad2depressed==true) {
        pad2l.loop();
        System.out.println("Pad 2 Pressed");
      }
      if (pad2depressed == false) {
        pad2l.loop(); //to reset position
        pad2l.pause();
        System.out.println("Pad 2 Stopped Looping");
      }
    }
    if (key == '3') {
      pad3depressed=!pad3depressed;
      if (pad3depressed == true) {
        System.out.println("Pad 3 Pressed");
        pad3l.loop();
        pad3struck=true;
      }
      if (pad3depressed == false) {
        pad3l.loop(); //to reset position
        pad3l.pause();
        System.out.println("Pad 3 Stopped Looping");
      }
    }
    if (key == '4') {
      pad4depressed=!pad4depressed;
      if (pad4depressed==true) {
        pad4l.loop();
        System.out.println("Pad 4 Pressed");
      }
      if (pad4depressed == false) {
        pad4l.loop();
        pad4l.pause();
        System.out.println("Pad 4 Stopped Looping");
      }
    }
    if (key == '5') {
      pad5depressed=!pad5depressed;
      if (pad5depressed==true) {
        pad5l.loop();
        System.out.println("Pad 5 Pressed");
      }
      if (pad5depressed == false) {
        pad5l.loop();
        pad5l.pause();
        System.out.println("Pad 5 Stopped Looping");
      }
    }
    if (key == '6') {
      pad6depressed=!pad6depressed;
      if (pad6depressed==true) {
        pad6l.loop();
        System.out.println("Pad 6 Pressed");
      }
      if (pad6depressed == false) {
        pad6l.loop();
        pad6l.pause();
        System.out.println("Pad 6 Stopped Looping");
      }
    }
    if (key == '7') {
      pad7depressed=!pad7depressed;
      if (pad7depressed==true) {
        pad7l.loop();
        System.out.println("Pad 7 Pressed");
      }
      if (pad7depressed == false) {
        pad7l.loop();
        pad7l.pause();
        System.out.println("Pad 7 Stopped Looping");
      }
    }
    if (key == '8') {
      pad8depressed=!pad8depressed;
      if (pad8depressed==true) {
        pad8l.loop();
        System.out.println("Pad 8 Pressed");
      }
      if (pad8depressed == false) {
        pad8l.loop();
        pad8l.pause();
        System.out.println("Pad 8 Stopped Looping");
      }
    }
    if (key == '9') {
      pad9depressed=!pad9depressed;
      if (pad9depressed==true) {
        pad9l.loop();
        System.out.println("Pad 9 Pressed");
      }
      if (pad9depressed == false) {
        pad9l.loop();
        pad9l.pause();
        System.out.println("Pad 9 Stopped Looping");
      }
    }
  }  //LOOP mode end
}