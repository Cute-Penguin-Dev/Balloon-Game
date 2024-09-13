extends RigidBody2D

@export var move_up_down: bool

func _ready() -> void:
	linear_damp = 0

func _physics_process(delta: float) -> void:
	if move_up_down:
		if linear_velocity.y < 99 and linear_velocity.y > -99:
			if linear_velocity.y > 0:
				linear_velocity.y = 100
			else:
				linear_velocity.y = -100
	else:
		if linear_velocity.x < 99 and linear_velocity.x > -99:
			if linear_velocity.x > 0:
				linear_velocity.x = 100
			else:
				linear_velocity.x = -100
