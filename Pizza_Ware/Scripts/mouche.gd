extends CharacterBody2D

var motion = Vector2()
var state  = 0
var x = 50
var y = 50


#func _ready():
	#var button = Button.new()
	#button.pressed.connect(self._button_pressed)
	#add_child(button)

func _pressed()->void:
	print("megrossecouilles")

#func _ready():
	#set_toggle_mode(0)

#func _on_Button_toggled(button_pressed):
#	if button_pressed==true:
#		print('hello') # show popup
#	else:
#		print('goodbye') # hide popup

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


func _on_timer_timeout():
	state = floor(randf_range(0,6))
	pass # Replace with function body.
	





func _on_input_event(viewport, event, shape_idx):
	pass # Replace with function body.


func _on_control_focus_entered():
	pass # Replace with function body.


func _on_button_button_down():
	pass # Replace with function body.
