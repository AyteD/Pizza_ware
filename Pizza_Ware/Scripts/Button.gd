extends Node2D

var state  = 0

func _process(delta):
	state = floor(randf_range(0,2))

func on_click():
	Transition.vie = 3
	Transition.score = 0
	print("vie", Transition.vie)
	print ("score ",Transition.score)
	if  state == 0:
		Transition.change_scene(4)
	elif state == 1:
		Transition.change_scene(5)

func _ready():
	set_process_input(true)

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			on_click()
	pass # Replace with function body.
