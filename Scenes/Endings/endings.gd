extends Node2D

func _ready():
		var ed = Dialogic.VAR.ed
		Dialogic.signal_event.connect(_on_dialogic_signal)
		match ed:
			1 : Dialogic.start("ed1_timeline")
			2 : Dialogic.start("ed2_timeline")
			3 : Dialogic.start("ed3_timeline")
	
func _on_dialogic_signal(argument):	
	if argument == "reset":
			get_tree().change_scene_to_file("res://Scenes/Menu/Title_Screen/title_screen.tscn")
	elif argument == "true end":
		get_tree().change_scene_to_file("res://Scenes/Menu/Title_Screen/title_screen.tscn")
