
void setup()
{
  size(500, 550);
  noLoop();
}

void draw()
{
  background(0);
  int sum = 0;
  for (int y = 10; y < 500; y = y + 70)
  {
    for (int x = 15; x < 500; x = x + 70)
    {
      Die hi = new Die(x, y);
      hi.show();
      hi.roll();
      sum = sum + hi.numDie;
    }
  }
  fill(255);
  textSize(40);
  text("Total :" + sum, 160, 525);
}

class Die
{
  int numDie;
  int myX, myY;
  Die(int x, int y)
  {
    numDie = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }

  void roll()
  {
    if (numDie == 6)
    {
      for ( int j = 10; j <= 40; j = j + 15)
      {
        for ( int i = 15; i <= 50; i = i + 20)
        {
          noStroke();
          fill(0);
          ellipse(myX+i, myY+j, 10, 10);
        }
      }
    } else if (numDie == 5)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (numDie == 4)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (numDie == 3)
      for ( int k = 10; k <= 40; k = k +15)
      {
        noStroke();
        fill(0);
        ellipse(myX+k, myY+k, 10, 10);
      } else if (numDie == 2)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else
    {
      noStroke();
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    }
  }
  void show()
  {
    fill(255);
    noStroke();
    rect(myX, myY, 50, 50, 10);
  }
}

void mouseClicked()
{
  redraw();
}