import pgzrun 
import random

WIDTH = 500 #視窗闊度
HEIGHT = 500 #視窗高度
timer = 60 #角色出現的時間
timer2 = 5000 #遊戲一局的時間
page=1 #頁面數

pgbd1 = Actor('pagebg1')
pgbd2 = Actor('pagebg2')
btn1 = Actor('btn1',(250,300))
btn2 = Actor('btn2',(250,400))
alien = Actor('alien',(100,60))

score=0 #得分

def draw(): #畫面作圖
    global timer2,page #載入共公變量
    screen.clear()
    if page == 1: #開始頁面
        pgbd1.draw()
        btn1.draw()
    if page == 2: #遊戲頁面
        pgbd2.draw()
        alien.draw()
        screen.draw.text(str(score),(30,30),fontsize=50,color='green')
        if timer2 < 0:
            btn2.draw()
            

def update(): #畫面更新
    global timer,timer2,page #載入共公變量
    timer -= 1
    timer2 -= 1
    if timer2 < 0:
        return
    if timer <0:
        alien.x = random.randint(10,500)
        alien.y = random.randint(10,500)
        timer = 60

def on_mouse_down(pos): 
    global score, timer,timer2,page #載入共公變量
    if btn1.collidepoint(pos):
        page=2
    if alien.collidepoint(pos) and timer2>0:
        sounds.eep.play()
        alien.x = random.randint(10,500)
        alien.y = random.randint(10,500)
        timer = 60
        score = score + 1
    if btn2.collidepoint(pos) and timer2<0:
        page = 1
        score = 0
        timer2 = 5000
    
pgzrun.go()