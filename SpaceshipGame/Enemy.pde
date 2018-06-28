class Enemy {     // this one is a bit complex...

private float xEnemy;
public float yEnemy;
private float eWidth = 25;
private float eHeight = 25;
private float enemySpeed;
private boolean lifeLost;
Enemy (float xEnemy, float yEnemy, float eWidth, float eHeight)
{
  this.xEnemy = xEnemy;
  this.yEnemy = yEnemy;
  this.eWidth = eWidth;
  this.eHeight = eHeight;
  this.enemySpeed = 2;
}

//////////////////////////////////////////////////////
// for every bullet in the array list, check for collsion with the enemy
boolean enemyAlive() {
  for (int i = 0; i < bullets.size(); i++) {     
    Bullet bullet = (Bullet) bullets.get(i); 
    if((bullet.xBul > xEnemy) && (bullet.xBul <= xEnemy +eWidth)&&(bullet.yBul >= yEnemy) && (bullet.yBul <= yEnemy + eHeight))  /*collsion detection calculation for bullet and enemy */{
      bullets.remove(i);  //remove the bullet that hit the enemy from the array list
      return false;
    }
  }
  return true;
}
  
////////////////////////////////////////////////////////////

void display(){
  fill(255);
  //rect(xEnemy, yEnemy, eWidth, eHeight);
  image(alien, xEnemy, yEnemy);
}

////////////////////////////////////////////////////////////
void updateEnemy(){
  lifeLost = false;
  xEnemy = xEnemy + enemySpeed;
  if (xEnemy == width -50 || xEnemy == 0) {
    enemySpeed = enemySpeed * -1; yEnemy = yEnemy + 50;
  } //if the enemy x coordinate reaches the left of right edge of the screen, direction changes (enemySpeed * -1) and the enemy moves down by 5 pixels
  if (yEnemy == height) {
    lifeLost = true;
  }
  lifeLost = true;
}

/////////////////////////////////////////////////////////////

    
  //getters
  public float getxEnemy(){return xEnemy;}
  public float getyEnemy(){return yEnemy;}
  public float geteHeight(){return eHeight;}
  public float geteWidth(){return eWidth;}
  
  //setters
  public void setxEnemy(float xEnemy) { this.xEnemy = xEnemy;}
  public void setyEnemy(float yEnemy) { this.yEnemy = yEnemy;}
  public void seteHeight(float eHeight) { this.eHeight = eHeight;}
  public void seteWidth(float eWidth) { this.eWidth = eWidth;}

}