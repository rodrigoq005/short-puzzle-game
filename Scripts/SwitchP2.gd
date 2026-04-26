extends Area2D

@export var switch_id: int

var is_on = false

@onready var sprite = $Sprite2D

func interact():
	is_on = !is_on
	update_visual()
	
	get_parent().get_node("PuzzleController").update_switch(switch_id, is_on)

func update_visual():
	if is_on:
		sprite.modulate = Color.GREEN
	else:
		sprite.modulate = Color.RED
