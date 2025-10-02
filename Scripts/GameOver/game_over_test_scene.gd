extends Node
class_name GameOverTestScene

# Test scene for previewing and comparing game over screen variants
# This allows the team to easily switch between variants for evaluation

@export_enum("Variant 1: Clean Centered", "Variant 2: Detailed Stats", "Variant 3: Minimal Compact") var current_variant: int = 0

var variant_scenes = [
	"res://Assets/UI/GameOver/game_over_variant1.tscn",
	"res://Assets/UI/GameOver/game_over_variant2.tscn",
	"res://Assets/UI/GameOver/game_over_variant3.tscn"
]

var current_instance = null

func _ready():
	print("=== Game Over Screen Test ===")
	print("Press 1, 2, or 3 to switch between variants")
	print("Press R to reload current variant")
	print("Press Q to quit")
	show_variant(current_variant)

func _input(event):
	if event is InputEventKey and event.pressed:
		match event.keycode:
			KEY_1:
				show_variant(0)
			KEY_2:
				show_variant(1)
			KEY_3:
				show_variant(2)
			KEY_R:
				show_variant(current_variant)
			KEY_Q:
				get_tree().quit()

func show_variant(variant_index: int):
	# Remove current instance if it exists
	if current_instance:
		current_instance.queue_free()
		current_instance = null
	
	# Load and display new variant
	current_variant = variant_index
	var scene = load(variant_scenes[variant_index])
	current_instance = scene.instantiate()
	add_child(current_instance)
	
	# For variant 2, set some example stats
	if variant_index == 1 and current_instance.has_method("set_stats"):
		current_instance.set_stats(125.5, 3)  # 2:05 time, level 3
	
	print("Now showing: ", get_variant_name(variant_index))

func get_variant_name(index: int) -> String:
	match index:
		0: return "Variant 1: Clean Centered Layout"
		1: return "Variant 2: Detailed Stats-Based Layout"
		2: return "Variant 3: Minimal Compact Layout"
		_: return "Unknown"
