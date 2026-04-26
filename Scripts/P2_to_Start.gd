extends Interactable


@export var target_scene: String = "res://Scenes/StartingRoom.tscn"

func interact():
	var puzzle = get_parent().get_node("PuzzleController")
	
	if puzzle.puzzle_solved:
		print("Door unlocked → returning")
		get_tree().change_scene_to_file(target_scene)
	else:
		print("Wrong combination")
