extends CanvasLayer
class_name CounterHud

signal countdown_finished

@export var player: PlayerController
@export var animation_player : AnimationPlayer

var original_speed: float
var original_jump: float

# Starts the countdown sequence:
# - Locks the player by setting speed and jump power to 0
# - Plays the countdown animation
func start_countdown():
	# store original stats
	original_speed = player.speed
	original_jump = player.jumpPower

	# lock player
	player.speed = 0
	player.jumpPower = 0

	# play countdown
	animation_player.play("Countdown")

# Called when the node is added to the scene.
# Connects the animation finished signal to a handler.
func _ready():
	animation_player.animation_finished.connect(_on_animation_finished)

# Handles the end of the countdown animation:
# - If the finished animation is "Countdown", restores the player's stats
# - Emits the countdown_finished signal to notify other nodes that the countdown is complete (functionality to be implemented later)
func _on_animation_finished(anim_name: StringName):
	if anim_name == "Countdown":
		# restore stats
		player.speed = original_speed
		player.jumpPower = original_jump
		emit_signal("countdown_finished")
