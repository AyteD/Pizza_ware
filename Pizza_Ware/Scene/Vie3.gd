extends Node2D

func _process(delta):
	
	if Transition.vie <= 0:
		queue_free()
	pass
