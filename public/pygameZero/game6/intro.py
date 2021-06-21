import pgzrun
import time
import random

TILE_SIZE = 20
WIDTH = 40*TILE_SIZE
HEIGHT = 30*TILE_SIZE

snakeHead = Actor('snake', (WIDTH/2, HEIGHT/2))
cookie = Actor('cookie')
cookie.x = random.randint(11,29)*TILE_SIZE
cookie.y = random.randint(11,29)*TILE_SIZE
Snake = []
Snake.append(snakeHead)
direction = 'right'
isLoose = False
score = 0

for i in range(4):
  snakebody = Actor('snake')
  snakebody.x = Snake[i].x -TILE_SIZE
  snakebody.y = Snake[i].y
  Snake.append(snakebody)

def draw():
  global score, isLoose
  screen.clear()
  for snakebody in Snake:
    snakebody.draw()
  cookie.draw()
  screen.draw.text('Score:'+str(score), (360,20), fontsize=40, color='white')
  if isLoose:
    screen.draw.text('Game Over!', (180, HEIGHT/2-100), fontsize=100, color='blue')

def update():
  global direction,isLoose
  if isLoose:
    return
  if keyboard.left:
    direction='left'
  if keyboard.right:
    direction='right'
  if keyboard.up:
    direction='up'
  if keyboard.down:
    direction='down'

def moveSnake():
  global direction, score, isLoose
  if isLoose:
    return

  newSnakeHead = Actor('snake')
  if direction  == 'right':
    newSnakeHead.x = Snake[0].x + TILE_SIZE
    newSnakeHead.y = Snake[0].y
  if direction == 'left':
    newSnakeHead.x = Snake[0].x - TILE_SIZE
    newSnakeHead.y = Snake[0].y
  if direction == 'up':
    newSnakeHead.x = Snake[0].x 
    newSnakeHead.y = Snake[0].y - TILE_SIZE
  if direction == 'down':
    newSnakeHead.x = Snake[0].x 
    newSnakeHead.y = Snake[0].y + TILE_SIZE
  
  if newSnakeHead.y<0 or newSnakeHead.y > HEIGHT \
  or newSnakeHead.x<0 or newSnakeHead.x>WIDTH:
    isLoose =True
  
  for snakebody in Snake:
    if newSnakeHead.x == snakebody.x \
    and newSnakeHead.y == snakebody.y:
      isLoose = True
      break
  
  if newSnakeHead.x == cookie.x and newSnakeHead.y ==cookie.y:
    cookie.x = random.randint(5, 35)*TILE_SIZE
    cookie.y = random.randint(5, 25)*TILE_SIZE
    score +=1
  else:
    del Snake[len(Snake)-1] 

  Snake.insert(0, newSnakeHead)
  #time.sleep(0.2)
  clock.schedule_unique(moveSnake, 0.2)

moveSnake()

pgzrun.go()