void setup()
{
  size(600, 600);
  noLoop();
  textAlign(CENTER);
  background(200);
}
void draw()
{
  int numDots = 0;
  int oneCount = 0;
  int twoCount = 0;
  int threeCount = 0;
  int fourCount = 0;
  int fiveCount = 0;
  int sixCount = 0;
  for (int i = 0; i <= 9; i++) 
  {
    for (int j = 0; j <= 10; j++)
    {
      Die bob = new Die(j*55, i*55);
      bob.roll();
      bob.show();
      if (bob.one == true) {
        numDots++;
        oneCount++;
      } else if (bob.two == true) {
        numDots+=2;
        twoCount++;
      } else if (bob.three == true) {
        numDots+=3;
        threeCount++;
      } else if (bob.four == true) {
        numDots+=4;
        fourCount++;
      } else if (bob.five == true) {
        numDots+=5;
        fiveCount++;
      } else if (bob.six == true) {
        numDots+=6;
        sixCount++;
      }
    }
  }
  fill(200);
  rect(0, 550, 600, 45);
  fill(0);
  textSize(15);
  text("Total Dice Roll: " +numDots, 300, 592);
  text("One:" +oneCount, 50, 570);
  text("Two:" +twoCount, 150, 570);
  text("Three:" +threeCount, 250, 570);
  text("Four:" +fourCount, 350, 570);
  text("Five:" +fiveCount, 450, 570);
  text("Six:" +sixCount, 550, 570);
}

void mousePressed()
{
  redraw();
}
class Die
{
  boolean one;
  boolean two;
  boolean three;
  boolean four;
  boolean five;
  boolean six;
  int myX, myY, oneCount, twoCount, threeCount, fourCount, fiveCount, sixCount;
  Die(int x, int y)//constructor
  {
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
    myX = x; 
    myY = y;
  }
  void roll()
  {
    if ((Math.random()) < 0.166) {
      one = true;
    }
    if ((Math.random()) < 0.33) {
      two = true;
    }
    if ((Math.random()) < 0.5) {
      three = true;
    }
    if ((Math.random()) < 0.66) {
      four = true;
    }
    if ((Math.random()) < 0.83) {
      five = true;
    }
    if ((Math.random()) < 1) {
      six = true;
    }
  } 
  void show()
  {
    noStroke();
    fill(240);
    rect(myX, myY, 50, 50, 15);
    if (one == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+25, myY+25, 10, 10);
    } else  if (two == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (three == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (four == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (five == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (six == true) {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX+15, myY+13, 9, 9);//top left
      ellipse(myX+15, myY+25, 9, 9); //middle left
      ellipse(myX+15, myY+37, 9, 9); //bottom left
      ellipse(myX+35, myY+13, 9, 9); //top right
      ellipse(myX+35, myY+25, 9, 9); //middle right
      ellipse(myX+35, myY+37, 9, 9); //middle bottom
    }
  }
}
