extends Node2D

@export var player_controller : PlayerController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D

func _process(_delta):
	# flip sprite depending on direction u going
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true
	
	# movement if the player is moving on the x side (horizontal)
	# If you didn’t use abs(), you’d only detect movement in one direction (e.g., right if you checked > 0.0).

	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("move")
	else:
		animation_player.play("idle")
	
	# play jump animation 
	# Using abs() would lose this directional information, so you wouldn’t know if the player is jumping or falling.

	if player_controller.velocity.y < 0.0:
		animation_player.play("jump")
	elif player_controller.velocity.y > 0.0:
		animation_player.play("fall")
