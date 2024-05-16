extends Node2D

var state  = 0
func _process(delta):
	state = floor(randf_range(0,2))
	
func _on_timer_timeout():
	if  state == 0:
		Transition.change_scene(4)
	elif state == 1:
		Transition.change_scene(5)

