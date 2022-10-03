extends KinematicBody2D
const TURN_SPEED = 10
const SPEED = 200

export (String, "1","2") var player_number = "1"

func _process(delta):
	var player_str  = "player" + player_number + "_"
	if Input.is_action_pressed(player_str + "right"):
		rotation += TURN_SPEED * delta
		
	if Input.is_action_pressed(player_str + "left"):
		rotation -= TURN_SPEED * delta
		
		
	if Input.is_action_pressed(player_str + "go"):
		
		var dir = Vector2(0,-1).rotated(rotation)
		
		move_and_collide(dir * SPEED * delta)
		
