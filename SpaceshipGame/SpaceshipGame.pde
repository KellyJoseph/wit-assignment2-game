
Player player;
PlayerCannon playerCannon;
Bullet bullet;
Enemy enemy;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
boolean canShoot;
int shootDelay;
int points = 0;
int lives = 3;
PImage alien;


void setup(){
  size(500, 500);
  alien = loadImage("space.png");  // loads a 25 x 25 pixel image of an alien that takes the place of the rectangle. 
  //The rectangle properties xeenemy, yEnemy, eWidth and eHeight are still needed for hit detection calculations
  player = new Player(200, 470, 60, 30);
  playerCannon = new PlayerCannon();
  for (int i = 0; i < 9; i++)  // populate the array list with the first row of enemies at y = 0
  {
    enemies.add(new Enemy(i* 50 + 10, 0, 25, 25));
  }
  for (int i = 0; i < 9; i++)    // add to the same array list with the second row of enemies at y = 50
  {
    enemies.add(new Enemy(i* 50 + 10, 50, 25, 25));
  }
  for (int i = 0; i < 9; i++)    // add to the same array list with the third row of enemies at y = 100
  {
    enemies.add(new Enemy(i* 50 + 10, 100, 25, 25));
  }
  for (int i = 0; i < 9; i++)    // add to the same array list with  fourth row of enemies at y = 150
  {
    enemies.add(new Enemy(i* 50 + 10, 150, 25, 25));
  }
}


void draw() {
  background(0);
  textSize (24);

  text("Score " + points,width/2,30);
  text("Lives " + lives, 20, 30);
  if (enemies.size() == 0) {
    text("You saved the earth from alien invaders \n You are a True Hero! \n Thank you!! \n Press r to reset", 20, 250);
  }
  
  for(int i = 0; i < bullets.size(); i++) {
    bullets.get(i).display();
    bullets.get(i).bulletUpdate();
    if (bullets.get(i). yBul < 0) {
      bullets.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    enemies.get(i).display();
    enemies.get(i).updateEnemy();
  }
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    if (!enemy.enemyAlive()) {
      enemies.remove(i);
      points = points + 100;
    } 
  }
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    if (enemy.yEnemy > 450 && lives > 0){
      resetWave();  
      lives --;
    } 
  }
  if (lives == 0) {
    gameOverDisplay();
  }
  shootDelay();
  player.display();
  playerCannon.display();
}


void  keyPressed() {
  if (key == 'r') {resetGame();} if (key == 'a' || key == 'A') {if (player.getxPos() > 0) {player.setxPos (player.getxPos() - player.getxSpeed());}}  //seXPos setter doesn't work
  if (key == 's' || key =='S') {if (player.getxPos() < width - player.getcWidth()){ player.setxPos ( player.getxPos() + player.getxSpeed());}}
  if ((key == 'j' || key == 'J') && (canShoot == true)) 
  {
    bullets.add(new Bullet(player.xPos, player.yPos));
    canShoot = false;
    shootDelay = 0;    //when shootDelay reaches 20 this becomes true again until the shoot button is pressed again
  }
}
// when we stick this in draw, we have a shoot delay counter that updates by 1 per frame of animation, 
// without this, we can fire a continuous beam across the screen, easily clearing all enemies removing all challenge
void shootDelay(){  
  shootDelay++;
  if (shootDelay >= 20) {
    canShoot = true;
  }
}

//this acts as a reset button, clearing the array lists for bullets and enemies, and calling the setup method. It is used to reset the screen between lives, but no the scores and lives count
void resetWave() {
  enemies.clear(); bullets.clear(); setup();
}

// same as above but also resets the score and lives count to restart the game completely
void resetGame() {
  enemies.clear(); bullets.clear(); setup(); points = 0; lives =3;
}


void gameOverDisplay() {
  if (lives <= 0){
    background(0);
    textSize (24);
    text("The earth is Doomed!! \n Game Over \n Press r to reset game", 100, 250);
  }
}
    





    