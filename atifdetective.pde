/* By Bashar Atif 
   Started on: November, 13,2018
   Due: November, 21, 2018
   Title: I Cant Get Out!
   This game is based on the TV show Stangeer Things. You start out as a character in the "Upside Down" where there is a monster called the demogorgon is chasing you. 
   To be free and return home, you are to find a way out and follow the step by step instructions. Enjoy the game!!!
*/
PImage back;                              // Creating a Background Image
PImage demo;
PImage dep;
PImage biking;
PImage DEMO2;
PImage papa1;
PImage papa2;
PImage DEMO3;
PImage eggo;
PImage home;
PImage hms;
PImage prt;
int state = 1;                           // Creating a state 
int chest =1;                            //Creating a state

void setup() {
  size(500, 500);                         // Setting the screen size  
  back = loadImage("theupsidedown.jpg");
  image(back, 0, 0, 500, 500);             // Inserting the image and the image size                     
  //Chest
  stroke (71, 63, 43);                  // Making the outline an intresting colour
  strokeWeight (10);                      //Changing the thickness of the line
  fill ( 168, 122, 45);                           
  rectMode (CORNERS);
  rect (196, 306, 325, 381);
  rect (196, 267, 325, 300);
  fill (206, 206, 206);
  rect (252, 296, 271, 330);
  //Hole
  strokeWeight(3);                                     
  fill ( 76, 77, 69);
  ellipseMode (CENTER);
  ellipse (65, 358, 80, 25);
  //Hatchet
  strokeWeight (2);
  fill (196, 193, 174);
  quad(448, 415, 449, 439, 415, 430, 432, 419
    );
  fill (114, 87, 72);
  quad (428, 434, 427, 478, 434, 483, 438, 436
    );
  //bike 
  ellipseMode (CORNERS);  
  fill(0, 0, 0, 0);
  strokeWeight(5);
  ellipse(42, 416, 91, 463
    );
  ellipse(128, 416, 176, 463);
  strokeWeight (3);
  triangle (64, 437, 99, 420, 101, 442
    );
  triangle (98, 418, 141, 415, 104, 441);
  line (153, 436, 143, 416);
  line (98, 400, 98, 416);
  line(98, 406, 106, 406);
  line(143, 414, 143, 402);
  line(133, 405, 152, 397);
  //demogorgon
  demo = loadImage("Demogorgon.png");
  image(demo, 238, 100, 327, 245);
}


void mousePressed () {
   println (state, chest);
  if (mouseButton== LEFT)                                                                                   // To find the points for the shapes or buttons
    println ( pmouseX, ",", pmouseY);
  if ((mouseButton == LEFT) && (((mouseX > 24) && (mouseX < 107)) && ((mouseY > 338) && (mouseY < 367))))  //The button for going in to the hole
  {
    state = 2;                                                                                             // The state changes to 2
  }
  if (state == 2)
  {
    dep = loadImage ("image.jpg");                                                                           // Making a change of background
    image(dep, 0, 0, 500, 500);
    textSize (30);                                                                                         // Captions 
    fill(225);
    text ("The Dep. of Energy has found you,", 0, 430);
    text  ("you have no serious weapons,", 0, 465);
    textSize (20);
    text ("You are outnumbered, right click to comply...", 0, 495);
  }

  if ((state == 2) && (mouseButton == RIGHT))                                                              //Change of state for the new scenes
  {
    state = 5;
  }
  if ((state == 5))
  {
    papa1 = loadImage ("papa1.jpg");
    image (papa1, 0, 0, 500, 500);                                                                     //Image of an evil character (papa from Stranger Things)
    textSize (20);
    text ("-Papa is going to take you back for reasearch!", 0, 450);
    text ("back to your room!", 0, 470);
    text ("LEFT click,to run away!", 0, 490);
    state = 7;
  }

  if ((state == 7) && ((mouseButton == LEFT)))                                                          // Change of state for new scene
  {
    state = 8;
  }
  if ((state == 8))
  {
    papa2 = loadImage ("papa2.jpg");                                                                    //The scene of the angry evil character 
    image (papa2, 0, 0, 500, 500);
    fill (255, 0, 0);
    text ("Papa got you, you will not be free for a long time!", 0, 470);
    text ("You can't get out...", 0, 490);
  }


  if ((mouseButton == LEFT) && (((mouseX > 41) && (mouseX < 178)) && ((mouseY > 395) && (mouseY < 458))))  // The button for the bike
  {
    state = 3;
  }
  if (state == 3)
  {
    biking = loadImage ("biking.jpg");                                                                   //The Biking scene
    image (biking, 0, 0, 500, 500);
    textSize(20);
    fill(0, 102, 153, 204);
    text("You have collected the bike,", 20, 20);                                                 // Captions
    textSize(15);
    text( "Right to keep going", 0, 495);
    state = 4;
  }

  if ((mouseButton == RIGHT) && (state == 4))                                                            // New scene
  {
    state = 12;
  }
  //The demogorgon attacks you.
  if (state ==12)
  {
    DEMO2 = loadImage ("DEMO2.jpg");
    image (DEMO2, 0, 0, 500, 500);
    textSize (30);
    fill(225);
    text ("The Demogorgon has found you,", 0, 430);
    text  ("you have no weapons,", 0, 465);
    fill(255, 0, 0);
    text ("you can't get out...", 0, 495);
  }
  // The user clicks on the chest
  if ((mouseButton == LEFT) && (state == 1) && (((mouseX > 190) && (mouseX < 330)) && ((mouseY > 265) && (mouseY < 383)))) 
  {
    DEMO3 = loadImage ("demo3.jpg");
    image (DEMO3, 0, 0, 500, 500);
    fill (206, 206, 206);
    textSize (20);
    text ("You ran out of time", 0, 25);
    textSize (30);
    fill (255, 0, 0);
    text ("now, you can't get out!", 0, 480);
  }
  // The user clicks on the Hathcet 
  if ((mouseButton == LEFT) && (state==1) && (chest ==1) && (((mouseX > 410) && (mouseX < 482)) && ((mouseY > 412) && (mouseY < 448))))  //The button for going in to the hole
  {
    DEMO3 = loadImage ("demo3.jpg");
    image (DEMO3, 0, 0, 500, 500);
    fill (206, 206, 206);
    textSize (20);
    text ("You have picked the hatchet up!", 0, 25);
    textSize (30);
    fill (255, 0, 0);
    text ("GET IT (right click)", 0, 480);
    chest = 2;
  }
  if ((chest ==2) && (state<2) && (mouseButton == RIGHT))
  {
    back = loadImage("theupsidedown.jpg");
    image(back, 0, 0, 500, 500);             // Inserting the image and the image size                     
    //Chest
    stroke (71, 63, 43);                    // Making the outline an intresting colour
    strokeWeight (10);                      //Changing the thickness of the line
    fill ( 168, 122, 45);                           
    rectMode (CORNERS);
    rect (196, 306, 325, 381);
    rect (196, 267, 325, 300);
    fill (206, 206, 206);
    rect (252, 296, 271, 330);
    //Hole
    strokeWeight(3);                                     
    fill ( 76, 77, 69);
    ellipseMode (CENTER);
    ellipse (65, 358, 80, 25);
    //bike 
    ellipseMode (CORNERS);  
    fill(0, 0, 0, 0);
    strokeWeight(5);
    ellipse(42, 416, 91, 463);
    ellipse(128, 416, 176, 463);
    strokeWeight (3);
    triangle (64, 437, 99, 420, 101, 442);
    triangle (98, 418, 141, 415, 104, 441);
    line (153, 436, 143, 416);
    line (98, 400, 98, 416);
    line(98, 406, 106, 406);
    line(143, 414, 143, 402);
    line(133, 405, 152, 397);
    fill (255, 0, 0);
    text ("You scared it away!", 0, 480);  // Captions
    chest = 2; 
   }
  // The user clicks on the chest
  if ((mouseButton == LEFT) && (chest == 2) && (state == 1) && (((mouseX > 190) && (mouseX < 330)) && ((mouseY > 265) && (mouseY < 383)))) 
  {
    eggo = loadImage ("eggo.jpg");
    image (eggo, 0, 0, 500, 500);
    fill (255, 0, 0);
    textSize (15);
    text ("You broke the chest with the hatchet!", 0, 460);
    text ("You eat your favorite eggos! RIGHT Click to continue", 0, 480);
    chest = 4;
  } 
  else if ((mouseButton == RIGHT) && (chest == 4))
  {
    home = loadImage ("home.jpg");
    image (home, 0, 0, 500, 500);
    fill (255, 0, 0);
    text ("You got the energy to teleport back home", 0, 460);
    fill (0, 255, 0);
    text ("You got out!", 0, 480);
  }
  
  
  //If the user clicks on the bicycle
  if ((mouseButton == LEFT) && (chest == 2) &&(mouseX > 41) && (mouseX < 178) && (mouseY > 395) && (mouseY < 458))  // The button for the bike
  {
    chest = 3;
  }
  if (chest == 3)
  {
    biking = loadImage ("biking.jpg");                                                                   //The Biking scene
    image (biking, 0, 0, 500, 500);
    textSize(20);
    fill(0, 102, 153, 204);
    text("You have collected the bike,", 20, 20);                                                 // Captions
    textSize(15);
    text( "or RIGHT click if you want to keep going", 0, 495);
    chest = 14;
  }
  if ((chest == 14)&&(mouseButton== RIGHT))
  {
    hms = loadImage ("hms.jpg");
    image (hms, 0, 0, 500, 500);
    textSize(15);
    text( "you have found the school, let's check it out... (LEFT CLICK)", 0, 495);
    chest=15;
  }
    if ((chest ==15) && (mouseButton ==  LEFT))
    {
      prt = loadImage ("prt.jpg");
      image (prt, 0,0,500,500);
       textSize(15);
    text( "you have found the portal! (RIGHT CLICK to go through)", 0, 495);
    chest = 16;
    }
    
   if ((chest == 16) && (mouseButton == RIGHT))
    {
        home = loadImage ("home.jpg");
    image (home, 0, 0, 500, 500);
    fill (255, 0, 0);
    text ("You got home!", 0, 460);
    fill (0, 255, 0);
    text ("You got out!", 0, 480);
  }
  println (state, chest);
  }
  
void draw() {}
