int stage = 0;

//font
PFont SS_font;
PFont YS_font;
PFont DewB_font;
PFont nBG_font;

void setup(){
  size(800,800);
  SS_font = loadFont("SangSangFlowerRoad-48.vlw");
  YS_font = loadFont("KoreanYNSJG2-R-48.vlw");
  DewB_font = loadFont("Dewberry-Bold-48.vlw");
  nBG_font = loadFont("NanumBarunGothic-48.vlw");
}

void draw(){
  ChangeScene(stage);
}

void ChangeScene(int n){
  switch(n){
  case 0:
    Main();
  break;
  case 1:
  break;
  case 2:
  break;
  case 3:
  break;
  case 4:
  break;
  case 5:
  break;
  
  }
}

void Main(){
  cursor();
  background(255);
  fill(#4E6371);
    textFont(SS_font, 35);
    textAlign(CENTER);
    text("안녕, 푸딩!", width/2, height/2-150);
    textFont(DewB, 25);
    fill(#B48387);
    text("Help me find her.. ToT", width/2, height/2-110);
  //change
}
