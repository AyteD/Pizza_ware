extends Node2D

@export_file("*.tscn") var tache

var sauce = 0
var x = 0
var y = 0
var x1 = 0
var y1 = 0

func gen_random_pos():
	x1 = randf_range(267, 660)
	y1 = randf_range(395, 460)
	var ma_scene := load(tache)
	var instance = ma_scene.instantiate()
	add_child(instance)
	instance.position = Vector2(x1,y1)

func _process(delta):
	if sauce >= 15:
		Transition.change_scene(1)
		on_click()

func on_click():
	sauce += 1
	print(sauce)
	gen_random_pos()

func _ready():
	set_process_input(true)

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			on_click()
			print("allo")

func _on_timer_timeout():
	Transition.change_scene(2)
