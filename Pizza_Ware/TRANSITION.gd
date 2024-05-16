extends Node

var scene = 0
# Called when the node enters the scene tree for the first time.
func change_scene(load):
	scene = load
	match scene :
		0:
			get_tree().change_scene_to_file("res://sprites/background.png")
		1:
			get_tree().change_scene_to_file("res://cuisine.tscn")
		2:
			get_tree().change_scene_to_file("res://sprites/background.png")
			
