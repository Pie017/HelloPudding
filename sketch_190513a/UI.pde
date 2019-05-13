class Button {
  String text;
  int x, y, w, h;
  color buttonColor;
  color textColor;

  Button(String _text, int _x, int _y, int _w, int _h, color _color) {
    text = _text;
    w = _w; 
    h = _h;
    x = _x; 
    y = _y;
    buttonColor = _color;
  }

  // boolean over(){


  // } 
  void DrawButton() {
    fill(buttonColor);
    rect(x, y, w, h);
    fill(textColor);
    text(text, x+w/2, y+h/2+10);
  }
}
