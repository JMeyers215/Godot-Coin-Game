extends CharacterBody2D
# player move speed variable
var move_speed : float = 200.0

func _physics_process(delta):
	#sets initial velocity to 0
	velocity.x = 0
	velocity.y = 0
	
	# all input directions
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	if Input.is_key_pressed(KEY_UP): 
		velocity.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
		
	velocity *= move_speed
	move_and_slide()
