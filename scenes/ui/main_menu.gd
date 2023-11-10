extends CanvasLayer

var options_scene = preload("res://scenes/ui/options_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$%PlayButton.pressed.connect(on_play_pressed)
	$%OptionsButton.pressed.connect(on_options_pressed)
	$%QuitButton.pressed.connect(on_quit_pressed)
	
	pass # Replace with function body.

func on_play_pressed():
	ScreenTransition.transition()
	await ScreenTransition.transitioned_halfway
	get_tree().change_scene_to_file("res://scenes/main/main.tscn")
	
	
func on_options_pressed():
	ScreenTransition.transition()
	await ScreenTransition.transitioned_halfway
	var options_instance = options_scene.instantiate()
	add_child(options_instance)
	options_instance.back_pressed.connect(on_options_closed.bind(options_instance))
	pass
	

func on_options_closed(options_instance:Node):
	options_instance.queue_free()	


func on_quit_pressed():
	get_tree().quit()
	pass
