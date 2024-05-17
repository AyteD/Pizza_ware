extends CharacterBody2D

var motion = Vector2()
var state  = 0

func _physics_process(delta):
	

	#0 for nothing, 1 = right, 2 = left
	if  state == 0:
		motion.x = 0
	elif state == 1:
		motion.x = 300
	elif state ==2:
		motion.x = -300
	elif state == 4:
		motion.y = 200
	elif state == 5:
		motion.y = -200
	
	velocity = motion
	move_and_slide() 


func _on_timer_timeout():
	state = floor(randf_range(0,6))
	pass # Replace with function body.



# Fonction personnalisée pour gérer le clic
func on_click():
	print("Objet cliqué!")
	$AudioStreamPlayer2D.play()
	motion.y = 1000
	if motion.y == 1000 :
		await get_tree().create_timer(0.25).timeout
		queue_free()
		
# Activer la détection des événements d'entrée
func _ready():
	set_process_input(true)


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			on_click()
	pass # Replace with function body.


