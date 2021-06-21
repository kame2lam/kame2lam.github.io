import pgzrun
import random
WIDTH = 600
HEIGHT = 800
isLoose = False
score = 0
playerSpeed = 5
brickSpeed = 1

alien = Actor('alien', (300,400))
lastAlienY = alien.y
bricks= []
for i in range(5):
  brick = Actor('brick', (100*(i+1), 150*(i+1)))
  bricks.append(brick)

def draw():
  global score, isLoose
  screen.clear()
  alien.draw()
  for brick in bricks:
    brick.draw()
  screen.draw.text('Score:'+str(score), (400,20), fontsize=40, color='white')
  if isLoose:
    screen.draw.text('Game Over!', (150,300), fontsize=60, color='red')

def update():
  global playerSpeed, brickSpeed, isLoose, score, lastAlienY
  isPlayOnGround = False
  for brick in bricks:
    if abs(alien.bottom-brick.top)<5 \
    and brick.left-alien.left < alien.width*2/3 \
    and alien.right - brick.right < alien.width*2/3:
      isPlayOnGround = True
      alien.bottom = brick.top
      if lastAlienY < alien.y:
        score += 1
      if keyboard.left:
        alien.x -= playerSpeed
      if keyboard.right:
        alien.x += playerSpeed
  
  lastAlienY = alien.y

  if not isPlayOnGround:
      alien.y += 5
  for brick in bricks:
    brick.y -= brickSpeed
  if bricks[0].top < 10:
    del bricks[0]
    brick = Actor('brick')
    brick.x = random.randint(100,500)
    brick.y = HEIGHT
    bricks.append(brick)
  if alien.top < 0 or alien.bottom > HEIGHT:
    playerSpeed = 0
    brickSpeed = 0
    isLoose = True

pgzrun.go()