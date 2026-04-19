extends Interactable

@export var coin_id: String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GameState.is_collected(coin_id):
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func interact():
	print("Coin collected")
	GameState.collect_coin(coin_id)
	queue_free()
