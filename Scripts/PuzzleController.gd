extends Node

var s1 = false
var s2 = false
var s3 = false

var puzzle_solved = false

func update_switch(id, state):
	if id == 1:
		s1 = state
	elif id == 2:
		s2 = state
	elif id == 3:
		s3 = state
	
	check_solution()

func check_solution():
	if s1 == true and s2 == false and s3 == true:
		puzzle_solved = true
		print("Correct combination")
	else:
		puzzle_solved = false
