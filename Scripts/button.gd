extends Interactable

signal switch_blocks

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for block in get_tree().get_nodes_in_group("switchable_blocks"):
		if not switch_blocks.is_connected(block.toggle_state):
				switch_blocks.connect(block.toggle_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func interact():
	emit_signal("switch_blocks")
