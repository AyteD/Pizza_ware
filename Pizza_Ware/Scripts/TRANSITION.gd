extends Node

var scene = 0
var vie = 3
# Called when the node enters the scene tree for the first time.
func change_scene(load):
	scene = load
	match scene :
		0:
			get_tree().change_scene_to_file("res://Scene/soupe_scene.tscn")
		1:
			get_tree().change_scene_to_file("res://Scene/cuisineVictoir.tscn")
		2:
			get_tree().change_scene_to_file("res://Scene/cuisineDefaite.tscn")
			vie -=1
			print("vie = ",vie)
		3:
			get_tree().change_scene_to_file("res://Scene/back_ground.tscn")
		4:
			get_tree().change_scene_to_file("res://Scene/transitionProtein.tscn")
		5:
			get_tree().change_scene_to_file("res://Scene/transitionSauce.tscn")
		6:
			get_tree().change_scene_to_file("res://Scene/Sauce_scene.tscn")