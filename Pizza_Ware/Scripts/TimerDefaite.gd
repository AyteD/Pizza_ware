extends Node2D

var state  = 0
# Called when the node enters the scene tree for the first time.
func _ready():


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	state = floor(randf_range(0,2))
	
	pass

func _on_timer_timeout():
	if  state == 0:
		Transition.change_scene(4)
	elif state == 1:
		Transition.change_scene(5)
	pass # Replace with function body.
