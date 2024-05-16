extends Node2D

var i = 0
var victoire = 0

func _process(delta):
	count()
	
	pass

func count():
	if i <=4:
		print(i)
		if i == 4:
			Transition.change_scene(1)
			print (victoire)
			print ("Bien Joué")


func _on_mouche_tree_exited():
	i+=1
	pass # Replace with function body.


