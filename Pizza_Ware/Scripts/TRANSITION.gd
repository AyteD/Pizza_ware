extends Node

var score = 0
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
			score += 1
			print (score) 
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
		7:
			get_tree().change_scene_to_file("res://Scene/Sauce_scene.tscn")
		8:
			get_tree().change_scene_to_file("res://Scene/soupe_scene.tscn")

func _process(delta):
	
	if vie <= 0:
		
		get_tree().change_scene_to_file("res://Scene/game_over.tscn")
	
