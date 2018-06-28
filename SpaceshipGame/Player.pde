class Player {    //not much going on here, just a simple rectangle for the player ship. Bullet x and y coordinates are based on player x and y coordinates

private float xPos;
private float yPos;
private float xSpeed = 8;
private float cWidth;
private float cHeight;

////////////////////////////////////////////////////////////////////
Player (float xPos, float yPos, float cWidth, float cHeight){
  this.xPos = xPos;
  this.yPos = yPos;
  this.cWidth = cWidth;
  this.cHeight = cHeight;
}
/////////////////////////////////////////////////////////////////////////
 
void display(){
  fill(255);
  rect(xPos, yPos, cWidth, cHeight);
}
//////////////////////////////////////////////////////////////////////////////
 //getters
 // cWidth = character i.e. ship width
  public float getxPos(){return xPos;}
  public float getyPos(){return yPos;}
  public float getcHeight(){return cHeight;}
  public float getcWidth(){return cWidth;}
  public float getxSpeed() {return xSpeed;}
  
  //setters
  public void setxPos(float xPos) { this.xPos = xPos;}
  public void setyPos(float yPos) { this.yPos = yPos;}
  public void setcHeight(float cHeight) {this.cHeight = cHeight;}
  public void setcWidth(float cWidth) { this.cWidth = cWidth;}
  public void setxSpeed(float xSpeed) {this.xSpeed = xSpeed;}
}