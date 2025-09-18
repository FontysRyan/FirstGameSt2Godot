extends Node

# this is our area number
var current_area = 1
# where to look for scenes
var area_path = "res://Assets/Scenes/Areas/"

func next_level():
	# counts up, 1 > 2
	current_area += 1
	# looks for area_[our number] eg area_2 then add .stcn after it. So we get area.2.stcn
	var full_path = area_path + "area_" + str(current_area) + ".tscn"
	# then change our scene toward our area_2.stcn
	get_tree().change_scene_to_file(full_path)
	# print it out so we can see it in our output
	print("The player has moved to a new area " + "(" + str(full_path) + ")")
