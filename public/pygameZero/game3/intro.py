import pgzrun

startNeedle= Actor('needle', anchor=(170+50, 1.5))
startNeedle.x =200
startNeedle.y = 300
needles = []
rotateSpeed = 1
score = 0

def draw():
  global rotateSpeed
  screen.fill('white')
  startNeedle.draw()
  for needle in needles:
    needle.draw()
  screen.draw.filled_circle((400,300) , 80 , 'red')
  screen.draw.text(str(score) , (50,250) , fontsize=50 , color='green')
  if rotateSpeed == 0:
    screen.draw.text('Game Over!' , (1,320) , fontsize=35 , color='red')

def update():
  global rotateSpeed
  for needle in needles:
    needle.angle += rotateSpeed

def on_key_down():
  global rotateSpeed, score
  newNeedle=Actor('needle' ,anchor=(170+50, 1.5))
  newNeedle.x=400
  newNeedle.y=300
  for needle in needles:
    if newNeedle.colliderect(needle):
      rotateSpeed = 0
  if rotateSpeed > 0:
    score += 1
  needles.append(newNeedle)

pgzrun.go()