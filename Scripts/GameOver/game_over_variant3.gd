extends CanvasLayer
class_name GameOverVariant3

# Variant 3: Minimal Compact Layout
# Design Philosophy: Subtle and streamlined, focusing on quick actions with minimal distraction

signal restart_pressed
signal quit_pressed

@onready var restart_button: Button = $Control/CenterContainer/VBoxContainer/RestartButton
@onready var quit_button: Button = $Control/CenterContainer/VBoxContainer/QuitButton
@onready var game_over_label: Label = $Control/CenterContainer/VBoxContainer/GameOverLabel
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	restart_button.pressed.connect(_on_restart_pressed)
	quit_button.pressed.connect(_on_quit_pressed)
	# Play fade-in animation
	animation_player.play("fade_in")

func _on_restart_pressed():
	emit_signal("restart_pressed")
	get_tree().reload_current_scene()

func _on_quit_pressed():
	emit_signal("quit_pressed")
	get_tree().quit()
