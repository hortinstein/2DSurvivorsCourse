extends CanvasLayer

@export var upgrades: Array[MetaUpgrade] = []
@onready var grid_container = $%GridContainer

var meta_upgrade_card_scene = preload("res://scenes/ui/meta_upgrade_card.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for upgrade in upgrades:
		var meta_upgrade_card_instance = meta_upgrade_card_scene.instantiate()
		grid_container.add_child(meta_upgrade_card_instance)
		meta_upgrade_card_instance.set_meta_upgrade(upgrade)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
