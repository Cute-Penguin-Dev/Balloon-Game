extends Area2D

@onready var data_manager: Node = get_tree().get_first_node_in_group("Data")


func _on_body_entered(body: Node2D) -> void:
	data_manager.player_spawn_pos = global_position
