from duinobot import *
from time import sleep
board = Board()
robot = Robot(board, board.report()[0])

threshold = 0
for i in range(5):
	threshold += robot.getLine()[0]
	time.sleep(0.2)
threshold /= 5
threshold -= 20
threshold = 0 if threshold < 0 else threshold

for i in xrange(200):
	if robot.getLine() <= (threshold, threshold):
		robot.beep(1000 - robot.getLine()[0])
	else:
		robot.beep(0)

robot.beep(0)
board.exit()
