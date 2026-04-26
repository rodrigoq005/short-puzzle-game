extends StaticBody2D

var switch_state = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate.a = 0.25
	$CollisionShape2D.set_deferred("disabled", true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func toggle_state() -> void:
	if !switch_state:
		modulate.a = 1.0
		$CollisionShape2D.set_deferred("disabled", false)
		switch_state = true
	else:
		modulate.a = 0.25
		$CollisionShape2D.set_deferred("disabled", true)
		switch_state = false
