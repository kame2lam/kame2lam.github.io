import pgzrun
import random

WIDTH = 350
HEIGHT = 600

background=Actor('background')
bird = Actor('bird1',(75,200))
bar_up=Actor('top',(300,0))
bar_down=Actor('bottom',(300,800))

score = 0
rate = 2
gameOver=False

def draw():
    global score, rate
    screen.clear()
    background.draw()
    bar_up.draw()
    bar_down.draw()
    bird.draw()
    screen.draw.text(str(score),(30,30),fontsize=50,color='green')
    if rate == 0:
        screen.draw.text('Gome Over!',(100,100),fontsize=50,color='green')

def update():
    global score,  rate
    bird.y=bird.y + rate
    bar_up.x=bar_up.x - rate
    bar_down.x=bar_down.x - rate
    if bar_up.x<0:
        bar_up.x=WIDTH
        bar_down.x=WIDTH
        bar_up.y=random.randint(-200,200)
        bar_down.y=800+bar_up.y
        score=score+1
    if bird.colliderect(bar_up) or bird.colliderect(bar_down) or bird.y<0 or bird.y>HEIGHT:
        rate = 0
    
def on_mouse_down():
    global rate
    if rate > 0:
        bird.y=bird.y-100

pgzrun.go()