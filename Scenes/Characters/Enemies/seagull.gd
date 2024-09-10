extends AnimatableBody2D

var prev_x : float
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
	
	prev_x = global_position.x
