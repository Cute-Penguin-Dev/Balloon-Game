extends CharacterBody2D

const FLOAT_SPEED: int = -45
const FALL_SPEED: int = 30
const SPEED: int = 15

var is_in_fan_wind: bool = false

@onready var global_data: Node = get_tree().get_first_node_in_group("Data")


func _ready() -> void:
	global_position = global_data.player_spawn_pos


func _physics_process(delta: float) -> void:
	var hor_velo = (Input.get_action_strength("right") - Input.get_action_strength("left")) * SPEED
	velocity.x = hor_velo
	
	if Input.is_action_pressed("down"):
		velocity.y = FALL_SPEED
	else:
		velocity.y = FLOAT_SPEED
		
	if is_in_fan_wind:
		velocity += global_data.current_blow_velo
		
	
	move_and_slide()


func _danger_collider_hit_(body: Node2D) -> void:
	get_tree().reload_current_scene()


func _entered_fan_wind_(body: Node2D) -> void:
	is_in_fan_wind = true


func _exited_fan_wind_(body: Node2D) -> void:
	is_in_fan_wind = false
