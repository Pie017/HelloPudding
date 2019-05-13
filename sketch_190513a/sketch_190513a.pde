int stage = 0;

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

void setup() {
  size(800, 800);
  Initialize();
}

void draw() {
  ChangeScene(stage);
}

void Initialize(){  
  // Load Fonts
  SS_font = loadFont("SangSangYoungestDaughter-48.vlw");
  YS_font = loadFont("KoreanYNSJG2-R-48.vlw");
  DewB_font = loadFont("Dewberry-Bold-48.vlw");
  nBG_font = loadFont("NanumBarunGothic-48.vlw");
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
    break;
  case 4:
    break;
  case 5:
    break;
  }
}

void Main() {
  cursor();
  background(255);

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
  if(button_story.over()) stage=1;
  
  
  //버튼 2: start
  button_start = new Button("start", width/2-125, height/2 +150, 250, 100, #E0C5C5);
  button_start.DrawButton();
  if(button_start.over()) stage = 2;
}

void Story() {
  background(255);
  //스토리 내용
  textFont(YS_font, 20);
  fill(120);
  int a=250;
  text("길가에 버려진 작은 고양이를 발견한 당신!", width/2, a);
  text("큰 다짐을 하고 이 아이를 데려오기로 한다.", width/2, a+30);
  text("꼬질꼬질하고 까칠한 아이에게 푸딩이라 이름 붙이는데..", width/2, a+60);
  text("과연 당신은 푸딩을 행복하게 해줄", width/2, a+90);
  text("좋은 집사가 될 수 있을까?", width/2, a+120);
  
  //버튼1: main
  button_main = new Button("main", width/2-125, height/2+20, 250, 100, #E0C5C5);
  button_main.DrawButton();
  if(button_main.over()) stage = 0;
 
  //버튼2: start
  button_start2 = new Button("start", width/2-125, height/2 +150, 250, 100, #E0C5C5);
  button_start2.DrawButton();
  if(button_start2.over()) stage=2;
}

void Scene1() {
}
