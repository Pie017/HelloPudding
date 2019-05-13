class Button2 {
  String text;
  int x =625;
  int y;
  int w =150;
  int h = 70;

  Button2(String _text, int _y) {
    text = _text;
    y = _y;
  }

  boolean over() {
    int rectX = x + w;
    int rectY = y + h;
    if ( x< mouseX && mouseX < rectX && y < mouseY && mouseY < rectY && !isPressed) {
      if (mousePressed) {
        isPressed = true;
        return true;
      }
    }

    if (!mousePressed) {
      isPressed = false;
    }
    return false;
  }

  void DrawButton() {
    if ( x< mouseX && mouseX < x+150 && y < mouseY && mouseY < y+70){
      if(mousePressed){
        fill(247,200,201,150);
      }else    {
      stroke(255, 150);
      strokeWeight(5);
      fill(255, 160);} 
    }else {
      noStroke();
      fill(255, 140);
    }
    rect(625, y, 150, 70);
    fill(80);
    textFont(SS_font, 30);
    text(text, x+w/2, y+h/2+15);
  }
}
