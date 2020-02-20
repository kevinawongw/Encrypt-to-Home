int gameScreen;
int numb;
int angle = 0;
Screen myScreen;
Characters myPerson;

void setup(){
  size(2200,1600);
  
  myScreen = new Screen();
  myPerson = new Characters();
  gameScreen = 0;
  numb = 0;
}

void draw(){
  textAlign(CENTER);
  if(gameScreen == 0)
  {
    myScreen.initialScreen();
  }
  else if(gameScreen == 1)
  {
    myScreen.forrest();
    if(numb==10){
      myScreen.portal();
      myScreen.message();
    }
  }
  else if(gameScreen == 2)
  {
//    myScreen.forrest();
    myScreen.sign();
  }
  else if(gameScreen == 3)
  {
    myScreen.lake();
  }
  else if(gameScreen == 4){
//    myScreen.lake();
    myScreen.paper();
  }
  else if(gameScreen == 5){
    myScreen.mountain();
    if(numb==1)
      myScreen.white();
    else if(numb ==2)
      myScreen.purple();
    else if(numb ==3)
       myScreen.bluee();
    else if(numb ==4)
      myScreen.redd();
    else if(numb == 5)
      myScreen.orange();
    else if(numb == 6)
      myScreen.yellow();
  }
  else if(gameScreen == 6){
    myScreen.info();
  }
  else if(gameScreen == 7){
    myScreen.congrats();
    gameScreen++;
  }
  
  else if(gameScreen ==8){
    myScreen.echo();
  }
  if(gameScreen != 0 && gameScreen !=2 && gameScreen != 4 && gameScreen != 6){
    image(loadImage("yellowBud.png"),mouseX,mouseY);
  }
}

public void  mousePressed()
{
  if(mouseX > 850 && mouseX < 850+width/4 && mouseY > 550 && mouseY < 550 + height/9 && gameScreen ==0) //Start
    gameScreen++;
  else if (mouseX>1437.5 && mouseX < 1437.5+225 && mouseY >325 && mouseY <325+175 && gameScreen == 1) //sign
    gameScreen++;
  else if(mouseX > 440 && mouseX < 440+width/7.5 && mouseY >10 && mouseY<10+height/4 && gameScreen ==1) //tree
    numb = 10;
  else if (mouseX >800 && mouseX < 800+width/7 && mouseY >980 && mouseY<980+height/3 && gameScreen==1){
       textSize(30);
       fill(255);
       fill(0);
       text("Read the sign!", width/7+550,height/3+420);
  }
  else if(mouseX > 1650 && mouseX < 1650+width/7 && mouseY >700 && mouseY<700+height/8 && gameScreen ==1) //portal
    gameScreen = gameScreen +2;
  else if(mouseX > 437.5 && mouseX < 437.5+200 && mouseY > 862.5 && mouseY < 862.5+250 && gameScreen == 3) //paper
    gameScreen++;
  else if(mouseX > 960 && mouseX < 960+width/5 && mouseY > 650 && mouseY < 650+height/7 && gameScreen == 3) //boat
    gameScreen= gameScreen+2;
  else if(mouseX > 320 && mouseX < 320+width/14 && mouseY > 760 && mouseY < 760+height/11 && gameScreen == 5)//stars
    numb = 1;
  else if(mouseX > 360 && mouseX < 360+width/14 && mouseY > 120 && mouseY < 120+height/11 && gameScreen == 5)
    numb = 2;
  else if(mouseX > 740 && mouseX < 740+width/14 && mouseY > 380  && mouseY < 380+height/11 && gameScreen == 5)
    numb = 3;
  else if(mouseX > 1150 && mouseX < 1150+width/14 && mouseY > 780 && mouseY < 780+height/11 && gameScreen == 5)
     numb =4;
  else if(mouseX > 1500 && mouseX < 1500+width/14 && mouseY > 330 && mouseY < 330+height/11 && gameScreen == 5)
     numb = 5;
  else if(mouseX > 1700 && mouseX < 1700+width/14 && mouseY > 920 && mouseY < 920+height/11 && gameScreen == 5)
    numb =6;
  else if(mouseX > 1000 && mouseX < 1000+width/9 && mouseY > 1050 && mouseY < 1050+height/13 && gameScreen == 5) //Congrats
      gameScreen++;
  else if (mouseX >650 && mouseX < 650+width/10 && mouseY >800 && mouseY<800+height/10 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("Think about the pattern!", width/10+570,height/10+650);
  }
  else if (mouseX >1100 && mouseX < 1100+width/10 && mouseY >1030 && mouseY<1030+height/10 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("Additional Hint: \n C=3, D=4", width/10+1000,height/10+1020);
  }
   else if (mouseX >60 && mouseX < 60+width/10 && mouseY >1360 && mouseY<1360+height/8 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("Bawk Bawk!", width/10,height/10+1200);
   }
  else if (mouseX >760 && mouseX < 760+width/6 && mouseY >1370 && mouseY<1370+height/12 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("PEMDAS", width/10+700,height/12+1200);
   }
   else if (mouseX >1520 && mouseX < 1520+width/12 && mouseY >1330 && mouseY<1330+height/12 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("Each number pairs \n with a letter!", width/10+1620,height/12+1250);
   }
   else if (mouseX >1580 && mouseX < 1600+width/9 && mouseY >800 && mouseY<800+height/11 && gameScreen==3){
       textSize(30);
       fill(255);
       fill(0);
       text("Good Luck!", width/10+1600,height/12+900);
   }
   else if (mouseX >0 && mouseX < 0+width/4 && mouseY >0 && mouseY<0+height/4 && gameScreen==3){
       textSize(50);
       fill(255);
       fill(0);
       text("•     • \n_" , width/4-430,height/4-280);
   }
}


void keyPressed()
{
  if(key == CODED)
  {
     //if(keyCode == UP && gameScreen <= 4)
     // {
     //   gameScreen++;
     // }
      if(keyCode == DOWN && gameScreen == 2)
      {
        gameScreen--;
      }
      if(keyCode == DOWN && gameScreen == 4)
      {
        gameScreen--;
      }
      //if(keyCode == LEFT && gameScreen == 5)
      //{
      //  gameScreen = 0;
      //}
      if(keyCode == SHIFT && gameScreen == 8)
      {
        gameScreen = 7;
      }
      if(keyCode == UP && gameScreen == 8)
      {
        gameScreen = 0;
      }
      if(keyCode == RIGHT && gameScreen == 6){
        gameScreen ++;
      }
  }
} 
