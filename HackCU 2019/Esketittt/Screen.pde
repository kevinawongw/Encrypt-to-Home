
class Screen
{
  Screen(){}
  void initialScreen(){
    //Derrick create the initial screen
        image(loadImage("Title_screen.png"),0,0);
  }
  
  void forrest(){
    image(loadImage("forrest.png"),0,0);
    //rect(800,980,width/7,height/3);
  }
  
  void sign(){
      image(loadImage("sign.png"),0,0);
  }
  void portal(){
      image(loadImage("portal.png"),1600,600);
  }
  void message(){
    image(loadImage("message.png"),1700,400);
  }
  void lake(){
    image(loadImage("lake.png"),0,0);
    //rect (1100,1030,width/10,height/11);//fish 1
    ////rect(60,1370,width/10,height/8);//fish chicken
    //rect(760,1370,width/6,height/12);//fish 3 love
    //rect (1520,1330,width/12,height/12);//small fish
    //rect (1600,880,width/10,height/11);//bigger fish
    //rect(0,0,width/4,height/4);//sun
    
}
  
  void paper(){
    image(loadImage("paper.png"),0,0);
  }
  
  void mountain(){
    image(loadImage("mountain.png"),0,0);
  }
  
  void white(){
    image(loadImage("fail.PNG"),-600,580);
  }
  void purple(){
    image(loadImage("pickAnother.PNG"),-550,-30);
  }
  void bluee(){
    image(loadImage("clickYellow.PNG"),-200,40);
  }
  void redd(){
    image(loadImage("wrong.PNG"),220,430);
  }
  void orange(){
    image(loadImage("incorrect.PNG"),600,-40);
  }
  void yellow(){
    image(loadImage("peak.PNG"),700,570);
  }
  void echo(){
    ellipse(0,0,1,1);
    textSize(40);
    fill(0);
    text("Press the 'shift' key to clear. \n Press the 'up' arrow to restart.", width/2-300, height/2+500);
  }
  void info(){
    background(255);
    textSize(70);
    fill(51,147,255);    
    text("You completed the final stage using an encryption \n technique called Caesar Cypher! This is one of many \n techniques of encryption. Many other \n encryption methods are used for cyber \n security. \n Press the 'right' key to continue.", width/2, height/2 -200);  

}
  
  void congrats(){
    image(loadImage("end.png"),0,0);
  }
}
