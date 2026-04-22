extends Area2D

var is_on = false

func interact():
	is_on = !is_on
	print("Switch toggled:", is_on)
