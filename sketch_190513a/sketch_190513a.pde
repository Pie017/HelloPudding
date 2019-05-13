int stage = 0;
int h=320;
int f=330;
int g=0;

//font
PFont SS_font;
PFont YS_font;
PFont DewB_font;
PFont nBG_font;

//button
Button button_story;
Button button_start;
Button button_main;
Button button_start2;
Button2 button_1;
Button2 button_2;
Button2 button_3;
Button2 button_4;

//image
PImage main_back;
PImage scene_back;
PImage cat;

void setup() {
  size(800, 800);
  Initialize();
}

void draw() {
  ChangeScene(stage);
}

void Initialize() {  
  // Load Fonts
  SS_font = loadFont("SangSangYoungestDaughter-48.vlw");
  YS_font = loadFont("KoreanYNSJG2-R-48.vlw");
  DewB_font = loadFont("Dewberry-Bold-48.vlw");
  nBG_font = loadFont("NanumBarunGothic-48.vlw");

  //Load Images
  main_back = loadImage("monun.png");
  scene_back = loadImage("back.png");
  cat = loadImage("cat.png");
}

void ChangeScene(int n) {
  switch(n) {
  case 0:
    Main();
    break;
  case 1:
    Story();
    break;
  case 2:
    Scene1();
    break;
  case 3:
    Scene2();
    break;
  case 4:
    //Success();
    break;
  case 5:
   // Fail()
    break;
  }
}

void Main() {
  cursor();
  image(main_back, 0, 0);

  //제목, 부제
  fill(#B27C7E);
  textFont(SS_font, 85);
  textAlign(CENTER);
  text("안녕, 푸딩!", width/2, height/2-100);
  textFont(YS_font, 25);
  fill(#B48387);
  text("본격 집사 첼렌지!", width/2, height/2-200);

  //버튼1: story
  button_story = new Button("story", width/2-125, height/2+20, 250, 100, #E0C5C5);
  button_story.DrawButton();
  if (button_story.over()) stage=1;


  //버튼 2: start
  button_start = new Button("start", width/2-125, height/2 +150, 250, 100, #E0C5C5);
  button_start.DrawButton();
  if (button_start.over()) stage = 2;
}

void Story() {
  image(main_back, 0, 0);
  fill(100);
  textFont(DewB_font, 50);
  text("STORY", 400, 130);

  rectMode(CENTER);
  fill(0, 100);
  rect(400, 260, 550, 200);
  rectMode(CORNER);
  //스토리 내용
  textFont(YS_font, 20);
  fill(255);
  int a=210;
  text("길가에 버려진 작은 고양이를 발견한 당신!", width/2, a);
  text("큰 다짐을 하고 이 아이를 데려오기로 한다.", width/2, a+30);
  text("꼬질꼬질하고 까칠한 아이에게 푸딩이라 이름 붙이는데..", width/2, a+60);
  text("과연 당신은 푸딩을 행복하게 해줄", width/2, a+90);
  text("좋은 집사가 될 수 있을까?", width/2, a+120);

  //버튼1: main
  button_main = new Button("main", width/2-125, height/2+20, 250, 100, #E0C5C5);
  button_main.DrawButton();
  if (button_main.over()) stage = 0;

  //버튼2: start
  button_start2 = new Button("start", width/2-125, height/2 +150, 250, 100, #E0C5C5);
  button_start2.DrawButton();
  if (button_start2.over()) stage=2;
}

void Scene1() {
  image(scene_back, 0, 0);
  //고양이
  image(cat, 220, 300, 300, 500);

  //상태창
  noStroke();
  fill(0, 100);
  rect(600, 0, 200, 800);
  fill(255);
  textFont(nBG_font, 25);
  text("name:", 660, 100);
  textFont(SS_font, 40);
  text("푸딩", 740, 100);

  //차트1: 건강_h
  rectMode(CORNERS);
  fill(#9AC0D3);
  if(h>330) fill(0,0);
  rect(650, h, 680, 330);
  fill(#9AC0D3);
  textFont(SS_font, 30);
  text("건강", 665, 365);

  //차트2: 친밀도_f
  fill(#FFF64B);
  if(f>330) fill(0,0);
  rect(720, f, 750, 330);
  fill(#FFF64B);
  text("친밀도", 735, 365);

  //사용자 버튼
  rectMode(CORNER);
  button_1 = new Button2("밥 주기", 400);
  button_1.DrawButton();
  button_2 = new Button2("놀아주기", 490);
  button_2.DrawButton();
  button_3 = new Button2("기다리기", 580);
  button_3.DrawButton();
  button_4 = new Button2("목욕!", 670);
  button_4.DrawButton();
  
  //스테이지 변화
  if (h >= 335) {
    stage = 5;
    g = 0; h = 320; f = 330;}
  if (g == 90) {
    stage = 3;
    g=0;
  }
}


void Scene2() {
  image(scene_back, 0, 0);
  //고양이
  image(cat, 220, 300, 300, 500);

  //상태창
  noStroke();
  fill(100, 100);
  rect(600, 0, 200, 800);
  fill(255);
  textFont(nBG_font, 25);
  text("name:", 660, 100);
  textFont(SS_font, 40);
  text("푸딩", 740, 100);

  //차트1: 건강_h
  rectMode(CORNERS);
  fill(#9AC0D3);
  if(h>330) fill(0,0);
  rect(650, h, 680, 330);
  fill(#9AC0D3);
  textFont(SS_font, 30);
  text("건강", 665, 365);

  //차트2: 친밀도_f
  fill(#FFF64B);
  if(f>330) fill(0,0);
  rect(720, f, 750, 330);
  fill(#FFF64B);
  text("친밀도", 735, 365);

  //사용자 버튼
  rectMode(CORNER);
  button_1 = new Button2("밥 주기", 400);
  button_1.DrawButton();
  button_2 = new Button2("놀아주기", 490);
  button_2.DrawButton();
  button_3 = new Button2("기다리기", 580);
  button_3.DrawButton();
  button_4 = new Button2("목욕!", 670);
  button_4.DrawButton();
  
  if (h >= 335) {
    stage = 5;
    g = 0; h = 320; f = 330;}
  if (g>130) {
    stage=4;
    g = 0; h = 320; f = 330;}
}

void keyPressed() {
  if (stage==2) {
    stage=0;
    h=320;
    f=330;
    g=0;
  }
  if (stage==3) {
    stage=0;
    h=320;
    f=330;
    g=0;
  }
}

void mouseClicked() {
  if( stage==2)
    if (625< mouseX && mouseX <775 && 400 < mouseY && mouseY < 470) {
      h = h - 20;
      f = f - 20;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 490 < mouseY && mouseY < 560) {
      h = h + 10;
      f = f + 30;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 580 < mouseY && mouseY < 650) {
      h = h + 10;
      f = f - 50;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 670 < mouseY && mouseY < 740) {
      h = h - 60;
      f = f + 50;
      g = g + 30;
    }
  if(stage==3)
    if (625< mouseX && mouseX <775 && 400 < mouseY && mouseY < 470) {
      h = h - 20;
      f = f - 10;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 490 < mouseY && mouseY < 560) {
      f = f - 30;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 580 < mouseY && mouseY < 650) {
      h = h + 10;
      f = f + 20;
      g = g + 30;
    } else if (625< mouseX && mouseX <775 && 670 < mouseY && mouseY < 740) {
      h = h - 60;
      f = f + 30;
      g = g + 30;
    }
}
