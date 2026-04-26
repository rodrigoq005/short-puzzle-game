extends Interactable


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GameState.key_collected:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func interact():
	if GameState.coin_count == 10:
		GameState.key_collected = true
		GameState.coin_count -= 10
		print("Key Collected")
		queue_free()
	else:
		print("Not enough money")
