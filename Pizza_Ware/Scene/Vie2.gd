extends Node2D

func _process(delta):
	
	if Transition.vie <= 1:
		queue_free()
	pass
