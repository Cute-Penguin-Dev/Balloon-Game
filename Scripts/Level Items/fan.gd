extends StaticBody2D


@export var blow_velo: Vector2

@onready var global_data: Node = get_tree().get_first_node_in_group("Data")


func _on_player_entered(body: Node2D) -> void:
	global_data.current_blow_velo = blow_velo
