extends Node
class_name LevelManager

@export var counter_hud: CounterHud

func _ready():
	counter_hud.start_countdown()
