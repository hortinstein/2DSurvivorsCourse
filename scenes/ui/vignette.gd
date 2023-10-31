extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	GameEvents.player_damaged.connect(on_player_damaged)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_player_damaged():
	$AnimationPlayer.play("hit")
