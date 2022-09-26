extends KinematicBody2D
const TURN_SPEED = 10
const SPEED = 200

func _process(delta):
	
	if Input.is_key_pressed(KEY_RIGHT):
		rotation += TURN_SPEED * delta
		
	if Input.is_key_pressed(KEY_LEFT):
		rotation -= TURN_SPEED * delta
		
		
	if Input.is_key_pressed(KEY_UP):
		
		var vel = Vector2(0,-1).rotated(rotation)
		
		move_and_collide(vel * SPEED * delta)
		
