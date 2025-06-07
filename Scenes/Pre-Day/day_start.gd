extends Button

@onready var end = 0

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_pressed() -> void:
	var day = str(int(Dialogic.VAR.day))
	if end == 1:
		end = 0
		get_tree().change_scene_to_file("res://Scenes/Day"+day+"/Day"+day+".tscn")
	else:
		day = str(int(Dialogic.VAR.day))
		Dialogic.start("Day"+day+"_timeline")
		$"..".visible = false
	
	
func _on_dialogic_signal(arg):
	if arg == "end_day":
		$".".text = "Close for today."
		end = 1
