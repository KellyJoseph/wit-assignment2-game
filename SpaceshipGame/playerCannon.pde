class PlayerCannon {    
  
// Not much going on here, the cannon is just a rectangle for aesthetic purposes and helping to line up shots

private float xPos;
private float yPos;
private float nWidth;
private float nHeight;


PlayerCannon (){
  this.xPos = player.xPos + player.getcWidth()/2 - nWidth/2;
  this.yPos = 400;
  this.nWidth = 20;
  this.nHeight = 20;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////

void display(){
  noStroke();
  fill(255);
  rect(player.getxPos() + player.getcWidth()/2 - nWidth/2, player.getyPos() - nHeight, this.nWidth, this.nHeight);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
 //getters
  public float getxPos(){return xPos;}
  public float getyPos(){return yPos;}
  public float getnHeight(){return nHeight;}
  public float getnWidth(){return nWidth;}
  
  //nWidth == nose width i.e. cannon width, too lazy to change everything
 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //setters
  public void setxPos(float xPos) { this.xPos = xPos;}
  public void setyPos(float yPos) { this.yPos = yPos;}
  public void seteHeight(float nHeight) { this.nHeight = nHeight;}
  public void seteWidth(float nWidth) { this.nWidth = nWidth;}
}