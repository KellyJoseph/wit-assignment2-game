public class Bullet   //after Enemy, this class is most complex
{
  private float xBul;
  private float yBul;
  private boolean offScreen; //not used
  private float bHeight;
  private float bWidth;
  
  Bullet(float xBul, float yBul){
    this.xBul = xBul + player.getcWidth()/2;
    this.yBul = yBul;
    this.bWidth = 6;
    this.bHeight = 12;
  }
  
  void display(){
    fill(255);
    rect (xBul,yBul, bWidth, bHeight);
  }
  void bulletUpdate(){
    yBul = yBul -5;
  }
 
  //getters
  public float getxBul(){
  return xBul;
}
  public float getyBul(){
  return yBul;
}
  public float getxbHeight(){
  return bHeight;
}
  public float getbWidth(){
  return bWidth;
}
  
  //setters
  public void setxBul(float xBul) { 
  this.xBul = xBul;
}
  public void setyBul(float yBul) {
  this.yBul = yBul;
}
  public void setbHeight(float bHeight) {
  this.bHeight = bHeight;
}
  public void setbWidth(float bWidth) {
  this.bWidth = bWidth;
}
  
}
 