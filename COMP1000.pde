int dia, movement;
int char1, char2, char3;
int loop1, loop2;
int xPos, yPos; 
int a = (int) random(1, 6);
int b = (int) random(1, 6);
int c, d;

void setup() {
  size(700, 700);
  dia = width/10;
  movement = dia;
  xPos = dia/2;
  yPos = dia/2;
  char1 = dia/4;
  char2 = dia/14;
  char3 = 12;
  loop1 = width*1/20;
  loop2 = width*19/20;
  c = a * 70;
  d = b * 70;
}

void draw() {
  //background
  background(#95E7FF);
  noStroke();
  fill(#55BF00);
  rect(0, height*3/4, width, height/3);
  noStroke();
  fill(255);
  circle(30, 70, 30);
  circle(50, 50, 40);
  circle(80, 50, 50);
  circle(100, 70, 30);
  rect(30, 60, 70, 25);
  circle(250, 240, 30); 
  circle(270, 220, 40);
  circle(300, 220, 50);
  circle(320, 240, 30);
  rect(250, 230, 70, 25);
  circle(130, 450, 30); 
  circle(150, 430, 40);
  circle(180, 430, 50);
  circle(200, 450, 30);
  rect(130, 440, 70, 25);
  circle(570, 120, 30); 
  circle(590, 100, 40);
  circle(620, 100, 50);
  circle(640, 120, 30);
  rect(570, 110, 70, 25);
  circle(500, 490, 30);
  circle(520, 470, 40);
  circle(550, 470, 50);
  circle(570, 490, 30);
  rect(500, 480, 70, 25);


  //loop
  if(xPos > width){
    xPos = loop1;
  } else if(xPos < 0){
    xPos = loop2;
  }
  
  if(yPos > height){
    yPos = loop1;
  }else if(yPos < 0){
    yPos = loop2;
  }
  
  //obstacles
  stroke(255);
  strokeWeight(2);
  fill(#813A00);
  rect(350, c, 70, 280);
  rect(490, d, 70, 280);
  
  //character
  stroke(0);
  strokeWeight(1);
  line(xPos, 0, xPos, yPos);
  fill(#FF00C8);
  circle(xPos - char1, yPos - char1, dia/2);
  circle(xPos + char1, yPos - char1, dia/2);
  circle(xPos - char1, yPos + char1, dia/2);
  circle(xPos + char1, yPos + char1, dia/2);
  fill(#FFE200);
  circle(xPos, yPos, dia/2);
  fill(0);
  ellipse(xPos - char2, yPos - char2, dia*2/35, dia/10);
  ellipse(xPos + char2, yPos - char2, dia*2/35, dia/10);
  fill(#FFA7DF);
  triangle(xPos - char2, yPos + char2, xPos, yPos + char3, xPos + char2, yPos + char2);
  
  //Game over
  if(xPos > 350 && xPos < 350 + 70){
    if(yPos > c && yPos < c + 280){
    background(#95E7FF);
    noStroke();
    fill(#55BF00);
    rect(0, height*3/4, width, height/3);
    fill(255, 0, 0);
    textSize(100);
    text("GAME OVER!", 100, 350);
    noLoop();
    }
  }
  
  if(xPos > 490 && xPos < 490 + 70){
    if(yPos > d && yPos < d + 280){
    background(#95E7FF);
    noStroke();
    fill(#55BF00);
    rect(0, height*3/4, width, height/3);
    fill(255, 0, 0);
    textSize(100);
    text("GAME OVER!", 100, 350);
    noLoop();
    }
  }
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      yPos-=movement;
    } 
    else if (keyCode == DOWN){
      yPos+=movement;
    }
    else if (keyCode == LEFT){
      xPos-=movement;
    }
    else if (keyCode == RIGHT){
      xPos+=movement;
    }   
  }
}
