extends Control

var i = $Button.action_mode
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	for i in $Button.action_mode:
		print (i)
		if i == _on_button_pressed():
			print("caca")
			



func _on_button_pressed():
	
	print("meg")
