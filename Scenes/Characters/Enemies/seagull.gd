extends AnimatableBody2D

var prev_x : float
#var prev_y : float
@onready var sprite : Sprite2D = $Sprite2D


func _ready() -> void:
	prev_x = global_position.x


func _process(delta: float) -> void:
	if sprite.flip_h == true:
		if global_position.x > prev_x:
			sprite.flip_h = false
	
	if sprite.flip_h == false:
		if global_position.x < prev_x:
			sprite.flip_h = true
	
	#if sprite.flip_v == true:
	#	if global_position.y < prev_y:
	#		sprite.flip_v = false
	
	#if sprite.flip_v == false:
	#	if global_position.y > prev_y:
	#		sprite.flip_v = true
	prev_x = global_position.x
	#prev_y = global_position.y
