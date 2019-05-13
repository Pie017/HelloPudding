boolean isPressed = false;

class Button {
  String text;
  int x, y, w, h;
  color buttonColor;
  color textColor;
  PFont textFont;

  Button(String _text, int _x, int _y, int _w, int _h, color _color) {
    text = _text;
    w = _w; 
    h = _h;
    x = _x; 
    y = _y;
    buttonColor = _color;
  }
 
  boolean over(){
    int rectX = x + w;
    int rectY = y + h;
    if ( x< mouseX && mouseX < rectX && y < mouseY && mouseY < rectY && !isPressed) {
      if(mousePressed){
        isPressed = true;
        return true;
      }
    }
    
    if(!mousePressed){
      isPressed = false;
    }
    return false;
  }

  void DrawButton() {
    fill(buttonColor);
    noStroke();
    rect(x, y, w, h);
    fill(textColor);
    textFont(SS_font, 35);
    text(text, x+w/2, y+h/2+10);
    //over();
  }
}
