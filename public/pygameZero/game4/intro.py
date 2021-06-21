import pgzrun
import random

WIDTH = 300
HEIGHT = 600

background1 = Actor('background', (300/2, -300))
background2 = Actor('background', (300/2, 300))
hero = Actor('hero',(WIDTH/2, HEIGHT*2/3))
bullet = Actor('bullet',(100,-HEIGHT))
enemy = Actor('enemy',(150,0))
score = 0
isLoose = False

def draw():
  screen.clear()
  background1.draw()
  background2.draw()
  hero.draw()
  bullet.draw()
  enemy.draw()
  screen.draw.text('Score:'+str(score), (200,10), fontsize=30, color='black')
  if isLoose:
    screen.draw.text('Game Over', (50,300), fontsize=50, color='red')

def update():
  global score, isLoose
  if isLoose:
    return
  if background1.y > 900:
    background1.y = -300
  if background2.y > 900:
    background2.y = -300
  background1.y +=1
  background2.y +=1

  if bullet.y > -HEIGHT:
    bullet.y = bullet.y - 10

  enemy.y += 3
  if enemy.y > HEIGHT:
    enemy.y = 0
    enemy.x = random.randint(80,300)

  if bullet.colliderect(enemy):
    sounds.got_enemy.play()
    enemy.y = 0
    enemy.x = random.randint(80,300)
    score += 1
    bullet.y = -HEIGHT

  if hero.colliderect(enemy):
    sounds.explode.play()
    isLoose = True
    hero.image = 'hero_blowup'

def on_mouse_move(pos, rel, buttons):
  global isLoose
  if isLoose:
    return
  hero.x=pos[0]
  hero.y=pos[1]

def on_mouse_down():
  global isLoose
  if isLoose:
    return
  sounds.gun.play()
  bullet.x = hero.x
  bullet.y = hero.y -70

pgzrun.go()