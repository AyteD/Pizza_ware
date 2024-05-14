extends CharacterBody2D


var motion = Vector2()
var state  = 0


func _physics_process(delta):
	

	#0 for nothing, 1 = right, 2 = left
	if  state == 0:
		motion.x = 0
	elif state == 1:
		motion.x = 300
	elif state ==2:
		motion.x = -300
	elif state == 4:
		motion.y = 200
	elif state == 5:
		motion.y = -200
	
	velocity = motion
	move_and_slide() 
	print(velocity)


func _on_timer_timeout():
	state = floor(randf_range(0,5))
	print(state)
	pass # Replace with function body.
