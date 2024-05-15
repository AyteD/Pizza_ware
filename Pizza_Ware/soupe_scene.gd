extends Node2D

var i = 0
var victoire = 0

func _process(delta):
	count()
	Change_Scene()
	pass

func count():
	if i <=4:
		print(i)
		if i == 4:
			victoire = 1
			print (victoire)
			print ("Bien Joué")


func _on_mouche_tree_exited():
	i+=1
	pass # Replace with function body.

func Change_Scene():
	if victoire == 1:
		victoire = 0
		get_tree().change_scene_to_file("res://cuisine.tscn")
