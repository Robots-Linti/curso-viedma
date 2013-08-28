from duinobot import *
b = Board()
robot = Robot(b, b.report().pop())

robot.forward(50)
while robot.getLine() > (800, 800):
	pass

robot.stop()
b.exit()
