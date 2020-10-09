void setup()
  {
    size(400, 400);
    noLoop();
  }
void draw()
  {
      background(0);
      int dotsSum = 0;
      for(int x = 25; x < 400; x = x + 100){
         for(int y = 25; y < 300; y = y + 100){
           Die one = new Die(x, y);
           one.show();
           dotsSum = dotsSum + one.numDots;
         }
      }
      fill(255, 255, 255);
      textSize(30);
      text("Total # of dots: " + dotsSum, 65, 350);
  }
void mousePressed()
  {
      redraw();
  }
class Die //models one single dice cube
  {
      int numDots, myX, myY, dieSize;
      Die(int x, int y) //constructor
      {
          numDots = (int)((Math.random()*6) + 1);
          myX = x;
          myY = y;
          dieSize = 51;
      }
  void roll()
      {
          numDots = (int)((Math.random()*6) + 1);
      }
  void show()
      {
        noStroke();
        fill(167, 193, 199);
        rect(myX, myY, dieSize, dieSize);
        if(numDots == 1){
          fill(222, 0, 37);
          ellipse(myX + 26, myY + 26, 7, 7);
        } else if(numDots == 2){
          fill(160, 0, 178);
          ellipse(myX + 13, myY + 13, 7, 7);
          ellipse(myX + 39, myY + 39, 7, 7);
        } else if(numDots == 3){
          fill(6, 129, 1);
          ellipse(myX + 13, myY + 13, 7, 7);
          ellipse(myX + 26, myY + 26, 7, 7);
          ellipse(myX + 39, myY + 39, 7, 7);
        } else if(numDots == 4){
          fill(255, 162, 0);
          ellipse(myX + 13, myY + 13, 7, 7);
          ellipse(myX + 13, myY + 39, 7, 7);
          ellipse(myX + 39, myY + 13, 7, 7);
          ellipse(myX + 39, myY + 39, 7, 7);
        } else if(numDots == 5){
          fill(255, 255, 0);
          ellipse(myX + 13, myY + 13, 7, 7);
          ellipse(myX + 39, myY + 13, 7, 7);
          ellipse(myX + 26, myY + 26, 7, 7);
          ellipse(myX + 13, myY + 39, 7, 7);
          ellipse(myX + 39, myY + 39, 7, 7);
        } else{
          fill(0, 9, 255);
          ellipse(myX + 13, myY + 13, 7, 7);
          ellipse(myX + 13, myY + 26, 7, 7);
          ellipse(myX + 13, myY + 39, 7, 7);
          ellipse(myX + 39, myY + 13, 7, 7);
          ellipse(myX + 39, myY + 26, 7, 7);
          ellipse(myX + 39, myY + 39, 7, 7);
        }
      }
  }
