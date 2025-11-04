extends Sprite2D

<<<<<<< HEAD
var boost_speed := 1500.0
var normal_speed := 600.0

var max_speed := normal_speed
var velocity := Vector2(0, 0)
var steering_factor := 10.0


=======
var normal_speed := 600.0
var max_speed := normal_speed
var velocity := Vector2(0,0)
var boost_speed := 1500.0	
	
>>>>>>> 63623e4e6c83cc3519daa0a7f60baf482590bd6e
func _process(delta: float) -> void:
	var direction := Vector2(0, 0)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")

	if direction.length() > 1.0:
		direction = direction.normalized()
<<<<<<< HEAD

	if Input.is_action_just_pressed("boost"):
		max_speed = boost_speed
		get_node("Timer").start()

	var desired_velocity := max_speed * direction 
	var steering_vector := desired_velocity - velocity 
	velocity += steering_vector * steering_factor * delta
	
	position += velocity * delta

	if direction.length() > 0.0:
		rotation = velocity.angle()
=======
	
	if Input.is_action_just_pressed("boost"):
		max_speed = boost_speed
		get_node("Timer").start()
		
	velocity = direction * max_speed
	position += velocity * delta 
	if direction.length() > 0.0:
		rotation = velocity.angle()
	



>>>>>>> 63623e4e6c83cc3519daa0a7f60baf482590bd6e

func _on_timer_timeout() -> void:
	max_speed = normal_speed
