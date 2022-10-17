// DATT 2400 
// Assignment 1
// Sophia Maxine Villarosa
// Student #: 218193631

// number of collumns and rows
int cols = 10;
int rows = 10;

//variables to hold grid grid spacing
int stepx;
int stepy;

int fromX = 187;
int toX = 417;
int fromY = 345;
int toY = 345;

int fromX1 = 187;
int toX1 = 187;
int fromY1 = 345;
int toY1 = 575;

int fromX2 = 187;
int toX2 = 417;
int fromY2 = 575;
int toY2 = 575;

int fromX3 = 417;
int toX3 = 417;
int fromY3 = 345;
int toY3 = 575;

int fromX4 = 187;
int toX4 = 417;
int fromY4 = 320;
int toY4 = 320;


//copy start coordinate for animation
int animx = fromX;
int animy = fromY;
//determine animation stepsize
int stepX = (toX-fromX)/10;
int stepY = (toY-fromY)/10;


int animx1 = fromX1;
int animy1 = fromY1;
//determine animation stepsize
int stepX1 = (toX1-fromX1)/10;
int stepY1 = (toY1-fromY1)/10;


int animx2 = fromX2;
int animy2 = fromY2;
//determine animation stepsize
int stepX2 = (toX2-fromX2)/10;
int stepY2 = (toY1-fromY2)/10;


int animx3 = fromX3;
int animy3 = fromY3;
//determine animation stepsize
int stepX3 = (toX3-fromX3)/10;
int stepY3 = (toY3-fromY3)/10;


int animx4 = fromX4;
int animy4 = fromY4;
//determine animation stepsize
int stepX4 = (toX4-fromX4)/10;
int stepY4 = (toY4-fromY4)/10;



//our setup function --


void setup() {

  //size of canvas in pixels
  size(700, 700);

  //calculation for the stepsize
  {stepx = width / cols;
  stepy = height / rows;

  //set the framerate (in this case 2 frames per second)
  frameRate(2);

  //set ellipse mode to corner - go to the reference to check out the different modes
  ellipseMode(CORNER);
}

  //draw thick lines
  strokeWeight(6);
}


// I was playing around with a code from previous lecture 
// and it gave me a result that I liked so i kept it in my program
// I wanted to use this type of background because it looks like a kind of gaming effect


void draw() {

  background(0);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      float x = i*stepx;
      float y = j*stepy;

      float randomvariable = random(10);

    
      if (randomvariable > 5) {
        fill(random(255), random(255), random(255));
        rect(x, y, stepx, stepy);
      }

// If I added in a rect instead of triangle and filled it in black(0), 
//it would not give me the same result, so I used triangle instead.

      else {
        fill(random(255), random(255), random(255));
        triangle(x, y, x,y,x,y);
      }
    }
  }
  
// I was going for a Squid Game type of theme for my code so I drew in the logo shapes

  translate(50,10);
  stroke(255);
  strokeWeight(15);
  fill(random(255), random(255), random(255));
 
  pushMatrix();
  translate(138, 295);
  rect(50, 50, 230, 230);
  popMatrix();
  
  pushMatrix();
  translate(70, 20);
  triangle(120,300,232,80,344,300);
  popMatrix();
  
  pushMatrix();
  translate(79, 360);
  ellipse(190,184,70,70);
  popMatrix();
  
  pushMatrix();
  translate(79, 80);
  ellipse(190,10,70,70);
  popMatrix();
{
  
  
// I also added this code I found online to represent the players of the Squid Game

  stroke(255);
  line(fromX, fromY, toX, toY);
  line(fromX1, fromY1, toX1, toY1);
  line(fromX2, fromY2, toX2, toY2);
  line(fromX3, fromY3, toX3, toY3);
  line(fromX4, fromY4, toX4, toY4);

  
  //draw animation in red
  stroke(255,87,51);
  line(animx, animy, animx+stepX, animy+stepY);
  line(animx1, animy1, animx1+stepX1, animy1+stepY1);
  line(animx2, animy2, animx2+stepX2, animy2+stepY2);
  line(animx3, animy3, animx3+stepX3, animy3+stepY3);
  line(animx4, animy4, animx4+stepX4, animy4+stepY4);
 
  
  
  // step animation for next frame
  animx = animx+stepX;
  animy = animy+stepY;
  
  animx1 = animx1+stepX1;
  animy1 = animy1+stepY1;
  
  animx2 = animx2+stepX2;
  animy2 = animy2+stepY2;
  
  animx3 = animx3+stepX3;
  animy3 = animy3+stepY3;
  
  animx4 = animx4+stepX4;
  animy4 = animy4+stepY4;
  

 
  
  // check for reset (if the animation on the next frame is drawn outside the line)
  if (animx+stepX > toX)
  {
    animx = fromX;
  }
  if (animy+stepY > toY)
  {
    animy = fromY;
  }
  
   if (animx1+stepX1 > toX1)
  {
    animx1 = fromX1;
  }
  if (animy1+stepY1 > toY1)
  {
    animy1 = fromY1;
  }
  
  
    if (animx2+stepX2 > toX2)
  {
    animx2 = fromX2;
  }
  if (animy2+stepY2 > toY2)
  {
    animy2 = fromY2;
  }
  
   if (animx3+stepX3 > toX3)
  {
    animx3 = fromX3;
  }
  if (animy3+stepY3 > toY3)
  {
    animy3 = fromY3;
  }
  
  
  if (animx4+stepX4 > toX4)
  {
    animx4 = fromX4;
  }
  if (animy4+stepY4 > toY4)
  {
    animy4 = fromY4;
  }
}

}


void mousePressed() {
    saveFrame("line-######.png");
  redraw();
}
