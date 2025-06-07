extends Node2D

func _ready():
	# Connecting Signals
	Dialogic.timeline_ended.connect(_on_timeline_ended)

	# Starting Scene
	Dialogic.start("Day0_timeline")


# Transitioning to next scene
func _on_timeline_ended():
	get_tree().change_scene_to_file("res://Scenes/Day1/Day1.tscn")
