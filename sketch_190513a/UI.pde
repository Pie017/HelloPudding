public class Button{
  private String text;
  private int w, h;
  private int x, y;
  private color buttonColor;
  
  public Button(String _text, int _x, int _y, int _w, int _h){
    text = _text;
    w = _w; h = _h;
    x = _x; y = _y;
  }
  
  void DrawButton(){
    fill(buttonColor);
    rect(x, y, w, h);
  }
  
  void ChangeColor(color newColor){
    buttonColor = newColor;
  }
}
