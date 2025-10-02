extends CanvasLayer
class_name GameOverVariant2

# Variant 2: Detailed Stats-Based Layout
# Design Philosophy: Provides comprehensive feedback with stats, score, and multiple action options

signal restart_pressed
signal main_menu_pressed
signal quit_pressed

@onready var restart_button: Button = $Control/Panel/MarginContainer/VBoxContainer/ButtonContainer/RestartButton
@onready var main_menu_button: Button = $Control/Panel/MarginContainer/VBoxContainer/ButtonContainer/MainMenuButton
@onready var quit_button: Button = $Control/Panel/MarginContainer/VBoxContainer/ButtonContainer/QuitButton
@onready var time_label: Label = $Control/Panel/MarginContainer/VBoxContainer/StatsContainer/TimeValue
@onready var level_label: Label = $Control/Panel/MarginContainer/VBoxContainer/StatsContainer/LevelValue

var game_time: float = 0.0
var current_level: int = 1

func _ready():
	restart_button.pressed.connect(_on_restart_pressed)
	main_menu_button.pressed.connect(_on_main_menu_pressed)
	quit_button.pressed.connect(_on_quit_pressed)
	update_stats()

func set_stats(time: float, level: int):
	game_time = time
	current_level = level
	update_stats()

func update_stats():
	if time_label:
		var minutes = int(game_time) / 60
		var seconds = int(game_time) % 60
		time_label.text = "%02d:%02d" % [minutes, seconds]
	if level_label:
		level_label.text = str(current_level)

func _on_restart_pressed():
	emit_signal("restart_pressed")
	get_tree().reload_current_scene()

func _on_main_menu_pressed():
	emit_signal("main_menu_pressed")
	# Navigate to main menu (would need to be implemented)
	get_tree().change_scene_to_file("res://Assets/Scenes/Areas/area_1.tscn")

func _on_quit_pressed():
	emit_signal("quit_pressed")
	get_tree().quit()
