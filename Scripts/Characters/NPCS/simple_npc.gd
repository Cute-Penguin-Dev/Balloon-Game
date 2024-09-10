extends StaticBody2D

var next_level_name: String

@export var next_level_number: int = 2

@onready var npc_ui: CanvasLayer = get_tree().get_first_node_in_group("NPC UI") as CanvasLayer
@onready var timer: Timer = $Timer


func _ready() -> void:
	next_level_name = "res://Scenes/Levels/level_" + str(next_level_number) + ".tscn"


func _crate_entered(body: Node2D) -> void:
	get_tree().paused = true
	timer.start()
	npc_ui.visible = true


func _on_timer_timeout() -> void:
	npc_ui.visible = false
	get_tree().paused = false
	get_tree().change_scene_to_file(next_level_name)
