int l = 1;
String count = "+l";

void setup()
{
  frameRate(5);
  size(400, 300);
  noStroke();
}

void draw()
{
  background(40, 50, 70);
  ground();
  buildings();
  rain();

  rainCount();

  l=l*2;

  if (l==8192)
  {
    l=1;
  }
}


void rainCount()
{
  fill(150);
  textSize(13);
  text("Number of Raindrops: "+l, 110, 30);
}

void ground()
{
  fill(150);
  rect(0, 200, 400, 100);
}

void buildings()
{
  thirdB();
  secondB();
  firstB();
  windows();
}

void rain()
{
  for (int n = 1; n<=l; n++)
  {
    fill(int(random(100, 140)), int(random(160, 200)), int(random(220, 260)), 80);
    ellipse(int(random(1, 401)), int(random(1, 301)), int(random(1, 2)), int(random(8, 12)));
  }
}


void firstB()
{
  fill(50);
  rect(0, 0, 100, 300);
  rect(300, 0, 100, 300);
}

void secondB()
{
  fill(60);
  rect(100, 50, 30, 210);
  rect(270, 50, 30, 210);
}

void thirdB()
{
  fill(70);
  rect(130, 100, 10, 120);
  rect(260, 100, 10, 120);
}

void windows()
{
  fill(245, 240, 138);
  for (int r = 20; r<241; r=r+60)
  {
    for (int c = 40; c>-121; c=c-60)
    {
      rect(c, r, 40, 30);
      rect(360-c, r, 40, 30);
    }
  }

  for (int rA= 65; rA<181; rA=rA+35)
  {
    rect(100, rA, 15, 20);
    rect(285, rA, 15, 20);
  }
}


