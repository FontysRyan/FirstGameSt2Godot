extends Node
class_name LevelManager

@export var counter_hud: CounterHud

func _ready():
	if counter_hud:
		counter_hud.start_countdown()
	else:
		print("No CounterHud assigned to LevelManager")
