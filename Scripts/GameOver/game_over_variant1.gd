extends CanvasLayer
class_name GameOverVariant1

# Variant 1: Clean Centered Layout
# Design Philosophy: Simple, bold, and easy to read with focus on core actions

signal restart_pressed
signal quit_pressed

@onready var restart_button: Button = $Control/VBoxContainer/RestartButton
@onready var quit_button: Button = $Control/VBoxContainer/QuitButton

func _ready():
	restart_button.pressed.connect(_on_restart_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_restart_pressed():
	emit_signal("restart_pressed")
	# Restart the current scene
	get_tree().reload_current_scene()

func _on_quit_pressed():
	emit_signal("quit_pressed")
	# Quit to main menu or exit game
	get_tree().quit()
