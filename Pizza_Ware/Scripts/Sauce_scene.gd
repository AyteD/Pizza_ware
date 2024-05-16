extends Node2D

@export_file("*.tscn") var tache
@export_file("*.tscn") var tacheSpawner

var sauce = 0
var x = 0
var y = 0


var x1 = 0
var y1 = 0
var x2 = 0
var y2 = 0

func gen_random_pos():
	#x1 = randf_range(267, 601)
	#y1 = randf_range(365, 395)
	#x2 = randf_range(286.6, 461.6)
	#y2 = randf_range(600.6, 461.6)
	
	
	var ma_scene := load(tache)	
	var instance = ma_scene.instance()
	add_child(instance)
	instance.position = Vector2.ZERO
	
	#return Vector2(x, y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sauce >= 15:
		Transition.change_scene(1)
		on_click()
		
		var ma_scene := load(tacheSpawner)
		var instance = ma_scene.instance()
		add_child(instance)
		instance.position = Vector2.ZERO
		
	pass

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
	#pass # Replace with function body.

func _on_timer_timeout():
	Transition.change_scene(2)
	pass # Replace with function body.
	
